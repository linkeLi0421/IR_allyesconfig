; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/prm_common.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prm_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.prm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.omap_prcm_init_data = type { i32, ptr, i32, i16, i16, i32, ptr, ptr }
%struct.omap_prcm_irq_setup = type { i16, i16, i16, i8, i8, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.omap_prcm_irq = type { ptr, i32, i8 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@prcm_irq_setup = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap_prcm_irq_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013PRCM: IRQ handler not initialized; cannot cleanup\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_prcm_irq_cleanup\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"arch/arm/mach-omap2/prm_common.c\00", [63 x i8] zeroinitializer }, align 32
@omap_prcm_irq_cleanup._entry_ptr = internal global ptr @omap_prcm_irq_cleanup._entry, section ".printk_index", align 4
@prcm_irq_chips = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap_prcm_register_chain_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013PRCM: already initialized; won't reinitialize\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"omap_prcm_register_chain_handler\00", [63 x i8] zeroinitializer }, align 32
@omap_prcm_register_chain_handler._entry_ptr = internal global ptr @omap_prcm_register_chain_handler._entry, section ".printk_index", align 4
@omap_prcm_register_chain_handler._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013PRCM: nr_regs too large\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_prcm_register_chain_handler._entry_ptr.7 = internal global ptr @omap_prcm_register_chain_handler._entry.5, section ".printk_index", align 4
@omap_prcm_register_chain_handler._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013PRCM: failed to allocate irq descs: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@omap_prcm_register_chain_handler._entry_ptr.10 = internal global ptr @omap_prcm_register_chain_handler._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PRCM\00", [27 x i8] zeroinitializer }, align 32
@prm_base = dso_local global { %struct.omap_domain_base, [20 x i8] } zeroinitializer, align 32
@omap_prcm_register_chain_handler._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013PRCM: failed to allocate generic chip\0A\00", [55 x i8] zeroinitializer }, align 32
@omap_prcm_register_chain_handler._entry_ptr.14 = internal global ptr @omap_prcm_register_chain_handler._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@prm_ll_data = internal global { ptr, [28 x i8] } { ptr @null_prm_ll_data, [28 x i8] zeroinitializer }, align 32
@prm_read_reset_sources.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"prm: %s: no mapping function defined for reset sources\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.prm_read_reset_sources = private unnamed_addr constant [23 x i8] c"prm_read_reset_sources\00", align 1
@prm_was_any_context_lost_old.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"prm: %s: no mapping function defined\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.prm_was_any_context_lost_old = private unnamed_addr constant [29 x i8] c"prm_was_any_context_lost_old\00", align 1
@prm_clear_context_loss_flags_old.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.prm_clear_context_loss_flags_old = private unnamed_addr constant [33 x i8] c"prm_clear_context_loss_flags_old\00", align 1
@omap_prm_assert_hardreset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_assert_hardreset = private unnamed_addr constant [26 x i8] c"omap_prm_assert_hardreset\00", align 1
@omap_prm_deassert_hardreset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_deassert_hardreset = private unnamed_addr constant [28 x i8] c"omap_prm_deassert_hardreset\00", align 1
@omap_prm_is_hardreset_asserted.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_is_hardreset_asserted = private unnamed_addr constant [31 x i8] c"omap_prm_is_hardreset_asserted\00", align 1
@omap_prm_reset_system.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_reset_system = private unnamed_addr constant [22 x i8] c"omap_prm_reset_system\00", align 1
@omap_prm_clear_mod_irqs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_clear_mod_irqs = private unnamed_addr constant [24 x i8] c"omap_prm_clear_mod_irqs\00", align 1
@omap_prm_vp_check_txdone.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_vp_check_txdone = private unnamed_addr constant [25 x i8] c"omap_prm_vp_check_txdone\00", align 1
@omap_prm_vp_clear_txdone.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_vp_clear_txdone = private unnamed_addr constant [25 x i8] c"omap_prm_vp_clear_txdone\00", align 1
@null_prm_ll_data = internal global { %struct.prm_ll_data, [52 x i8] } zeroinitializer, align 32
@omap_prcm_dt_match_table = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am4_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-pllss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dm814_pllss_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-prm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-prm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-scrm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scrm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-prm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap5_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-scrm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scrm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-prm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_prm_data }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@__initcall__kmod_prm_common__288_817_prm_late_init4 = internal global ptr @prm_late_init, section ".initcall4.init", align 4
@prm_features = dso_local global { i16, [30 x i8] } zeroinitializer, align 32
@am3_prm_data = internal global %struct.omap_prcm_init_data { i32 2, ptr null, i32 0, i16 0, i16 0, i32 0, ptr @am33xx_prm_init, ptr null }, section ".init.data", align 4
@am4_prm_data = internal global %struct.omap_prcm_init_data { i32 2, ptr null, i32 0, i16 0, i16 1, i32 16384, ptr @omap44xx_prm_init, ptr null }, section ".init.data", align 4
@dm814_pllss_data = internal global %struct.omap_prcm_init_data { i32 6, ptr null, i32 0, i16 0, i16 0, i32 0, ptr @am33xx_prm_init, ptr null }, section ".init.data", align 4
@omap2_prm_data = internal global %struct.omap_prcm_init_data { i32 2, ptr null, i32 0, i16 0, i16 0, i32 0, ptr @omap2xxx_prm_init, ptr null }, section ".init.data", align 4
@omap3_prm_data = internal global %struct.omap_prcm_init_data { i32 2, ptr null, i32 0, i16 2048, i16 0, i32 0, ptr @omap3xxx_prm_init, ptr null }, section ".init.data", align 4
@omap4_prm_data = internal global %struct.omap_prcm_init_data { i32 2, ptr null, i32 0, i16 0, i16 3, i32 6912, ptr @omap44xx_prm_init, ptr null }, section ".init.data", align 4
@scrm_data = internal global %struct.omap_prcm_init_data { i32 3, ptr null, i32 0, i16 0, i16 0, i32 0, ptr null, ptr null }, section ".init.data", align 4
@omap5_prm_data = internal global %struct.omap_prcm_init_data { i32 2, ptr null, i32 0, i16 0, i16 3, i32 7168, ptr @omap44xx_prm_init, ptr null }, section ".init.data", align 4
@dra7_prm_data = internal global %struct.omap_prcm_init_data { i32 2, ptr null, i32 0, i16 0, i16 1, i32 7424, ptr @omap44xx_prm_init, ptr null }, section ".init.data", align 4
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"prcm_irq_setup\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 62, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 196, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"prcm_irq_chips\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 55, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 273, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 278, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 311, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 317, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"prm_base\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 65, i32 25 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 322, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 337, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"prm_ll_data\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 74, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 377, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 401, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"null_prm_ll_data\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 73, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"prm_features\00", align 1
@___asan_gen_.85 = private constant [36 x i8] c"../arch/arm/mach-omap2/prm_common.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 67, i32 5 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__initcall__kmod_prm_common__288_817_prm_late_init4, ptr @omap_prcm_irq_cleanup._entry, ptr @omap_prcm_irq_cleanup._entry_ptr, ptr @omap_prcm_register_chain_handler._entry, ptr @omap_prcm_register_chain_handler._entry.12, ptr @omap_prcm_register_chain_handler._entry.5, ptr @omap_prcm_register_chain_handler._entry.8, ptr @omap_prcm_register_chain_handler._entry_ptr, ptr @omap_prcm_register_chain_handler._entry_ptr.10, ptr @omap_prcm_register_chain_handler._entry_ptr.14, ptr @omap_prcm_register_chain_handler._entry_ptr.7, ptr @prcm_irq_setup, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @prcm_irq_chips, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @prm_base, ptr @.str.13, ptr @.str.15, ptr @prm_ll_data, ptr @.str.16, ptr @.str.17, ptr @null_prm_ll_data, ptr @prm_features], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prcm_irq_setup to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prcm_irq_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prcm_irq_chips to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prcm_register_chain_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prcm_register_chain_handler._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prcm_register_chain_handler._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prm_base to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prcm_register_chain_handler._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prm_ll_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_prm_ll_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prm_features to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_prcm_event_to_irq(ptr noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prcm_irq_setup, align 4
  %tobool.not = icmp eq ptr %0, null
  %tobool1.not = icmp eq ptr %name, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nr_irqs = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nr_irqs, align 1
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp14.not = icmp eq i8 %2, 0
  br i1 %cmp14.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %irqs = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 5
  %3 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irqs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.omap_prcm_irq, ptr %4, i32 %i.015
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %base_irq = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 14
  %7 = ptrtoint ptr %base_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_irq, align 4
  %offset = getelementptr %struct.omap_prcm_irq, ptr %4, i32 %i.015, i32 1
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add = add i32 %10, %8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then5, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.then5 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.cond.preheader.cleanup_crit_edge ], [ -2, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_prcm_irq_cleanup() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prcm_irq_setup, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @prcm_irq_chips, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %for.cond.preheader

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.cond.preheader:                               ; preds = %if.end
  %2 = load ptr, ptr @prcm_irq_setup, align 4
  %nr_regs27 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %nr_regs27 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nr_regs27, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp29.not = icmp eq i8 %4, 0
  br i1 %cmp29.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %if.end7.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %5 = load ptr, ptr @prcm_irq_chips, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.030
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %for.body.if.end7_crit_edge, label %if.then5

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @irq_remove_generic_chip(ptr noundef nonnull %7, i32 noundef -1, i32 noundef 0, i32 noundef 0) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %for.body.if.end7_crit_edge
  %8 = load ptr, ptr @prcm_irq_chips, align 4
  %arrayidx8 = getelementptr ptr, ptr %8, i32 %i.030
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx8, align 4
  %inc = add nuw nsw i32 %i.030, 1
  %10 = load ptr, ptr @prcm_irq_setup, align 4
  %nr_regs = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %nr_regs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nr_regs, align 2
  %conv = zext i8 %12 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %13 = load ptr, ptr @prcm_irq_chips, align 4
  tail call void @kfree(ptr noundef %13) #10
  store ptr null, ptr @prcm_irq_chips, align 4
  br label %if.end9

if.end9:                                          ; preds = %for.end, %if.end.if.end9_crit_edge
  %14 = load ptr, ptr @prcm_irq_setup, align 4
  %saved_mask = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %saved_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %saved_mask, align 4
  tail call void @kfree(ptr noundef %16) #10
  %17 = load ptr, ptr @prcm_irq_setup, align 4
  %saved_mask10 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %saved_mask10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %saved_mask10, align 4
  %priority_mask = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %17, i32 0, i32 13
  %19 = ptrtoint ptr %priority_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priority_mask, align 4
  tail call void @kfree(ptr noundef %20) #10
  %21 = load ptr, ptr @prcm_irq_setup, align 4
  %priority_mask11 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %priority_mask11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %priority_mask11, align 4
  %irq12 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %21, i32 0, i32 6
  %23 = ptrtoint ptr %irq12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq12, align 4
  tail call void @__irq_set_handler(i32 noundef %24, ptr noundef null, i32 noundef 1, ptr noundef null) #10
  %25 = load ptr, ptr @prcm_irq_setup, align 4
  %base_irq = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %base_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp13 = icmp sgt i32 %27, 0
  br i1 %cmp13, label %if.then15, label %if.end9.if.end19_crit_edge

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %nr_regs17 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %nr_regs17 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr_regs17, align 2
  %conv18 = zext i8 %29 to i32
  %mul = shl nuw nsw i32 %conv18, 5
  tail call void @irq_free_descs(i32 noundef %27, i32 noundef %mul) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end9.if.end19_crit_edge
  %30 = load ptr, ptr @prcm_irq_setup, align 4
  %base_irq20 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %base_irq20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %base_irq20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_remove_generic_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_free_descs(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap_prcm_irq_prepare() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prcm_irq_setup, align 4
  %suspended = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 15
  %1 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %suspended, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_prcm_irq_complete() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prcm_irq_setup, align 4
  %suspended = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 15
  %1 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %suspended, align 4
  %suspend_save_flag = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 16
  %2 = ptrtoint ptr %suspend_save_flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspend_save_flag, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %suspend_save_flag to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %suspend_save_flag, align 1
  %restore_irqen = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 10
  %5 = ptrtoint ptr %restore_irqen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %restore_irqen, align 4
  %saved_mask = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 12
  %7 = ptrtoint ptr %saved_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %saved_mask, align 4
  tail call void %6(ptr noundef %8) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_prcm_register_chain_handler(ptr noundef %irq_setup) local_unnamed_addr #3 align 64 {
entry:
  %mask = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask) #10
  %tobool.not = icmp eq ptr %irq_setup, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr_regs1 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %irq_setup, i32 0, i32 3
  %0 = ptrtoint ptr %nr_regs1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr_regs1, align 2
  %conv = zext i8 %1 to i32
  %2 = load ptr, ptr @prcm_irq_setup, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ugt i8 %1, 2
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  store ptr %irq_setup, ptr @prcm_irq_setup, align 4
  %3 = shl nuw nsw i32 %conv, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #15
  store ptr %call8.i.i, ptr @prcm_irq_chips, align 4
  %call8.i.i166 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #15
  %4 = load ptr, ptr @prcm_irq_setup, align 4
  %saved_mask205 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %saved_mask205 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i166, ptr %saved_mask205, align 4
  %call8.i.i199 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #15
  %.pr = load ptr, ptr @prcm_irq_chips, align 4
  %6 = load ptr, ptr @prcm_irq_setup, align 4
  %priority_mask = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %priority_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i199, ptr %priority_mask, align 4
  %tobool16.not = icmp eq ptr %.pr, null
  br i1 %tobool16.not, label %if.end12.err_crit_edge, label %lor.lhs.false

if.end12.err_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

lor.lhs.false:                                    ; preds = %if.end12
  %saved_mask17 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %6, i32 0, i32 12
  %8 = ptrtoint ptr %saved_mask17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %saved_mask17, align 4
  %tobool18.not = icmp eq ptr %9, null
  %tobool21.not = icmp eq ptr %call8.i.i199, null
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool21.not
  br i1 %or.cond, label %lor.lhs.false.err_crit_edge, label %if.end23

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end23:                                         ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %mask, align 8
  %nr_irqs = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %irq_setup, i32 0, i32 4
  %11 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nr_irqs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp25213.not = icmp eq i8 %12, 0
  br i1 %cmp25213.not, label %if.end23.for.end_crit_edge, label %for.body.lr.ph

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %irqs = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %irq_setup, i32 0, i32 5
  %priority_mask35 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %irq_setup, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0214 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irqs, align 4
  %offset27 = getelementptr %struct.omap_prcm_irq, ptr %14, i32 %i.0214, i32 1
  %15 = ptrtoint ptr %offset27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset27, align 4
  %and = and i32 %16, 31
  %shl = shl nuw i32 1, %and
  %shr = ashr i32 %16, 5
  %arrayidx28 = getelementptr [2 x i32], ptr %mask, i32 0, i32 %shr
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx28, align 4
  %or = or i32 %shl, %18
  store i32 %or, ptr %arrayidx28, align 4
  %priority = getelementptr %struct.omap_prcm_irq, ptr %14, i32 %i.0214, i32 2
  %19 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %priority, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool31.not = icmp eq i8 %20, 0
  br i1 %tobool31.not, label %for.body.for.inc_crit_edge, label %if.then32

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %priority_mask35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priority_mask35, align 4
  %arrayidx37 = getelementptr i32, ptr %22, i32 %shr
  %23 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx37, align 4
  %or38 = or i32 %24, %shl
  store i32 %or38, ptr %arrayidx37, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0214, 1
  %25 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nr_irqs, align 1
  %conv24 = zext i8 %26 to i32
  %cmp25 = icmp ult i32 %inc, %conv24
  br i1 %cmp25, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end23.for.end_crit_edge
  %irq40 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %irq_setup, i32 0, i32 6
  %27 = ptrtoint ptr %irq40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq40, align 4
  tail call void @__irq_set_handler(i32 noundef %28, ptr noundef nonnull @omap_prcm_irq_handler, i32 noundef 1, ptr noundef null) #10
  %29 = ptrtoint ptr %nr_regs1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nr_regs1, align 2
  %conv42 = zext i8 %30 to i32
  %mul = shl nuw nsw i32 %conv42, 5
  %call43 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef %mul, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %base_irq = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %irq_setup, i32 0, i32 14
  %31 = ptrtoint ptr %base_irq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call43, ptr %base_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp45 = icmp slt i32 %call43, 0
  br i1 %cmp45, label %do.end50, label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %for.end
  %32 = ptrtoint ptr %nr_regs1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nr_regs1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp58216.not = icmp eq i8 %33, 0
  br i1 %cmp58216.not, label %for.cond55.preheader.for.end89_crit_edge, label %for.body60.lr.ph

for.cond55.preheader.for.end89_crit_edge:         ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end89

for.body60.lr.ph:                                 ; preds = %for.cond55.preheader
  %mask79 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %irq_setup, i32 0, i32 1
  br label %for.body60

do.end50:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call43) #14
  br label %err

for.body60:                                       ; preds = %if.end71.for.body60_crit_edge, %for.body60.lr.ph
  %i.1217 = phi i32 [ 0, %for.body60.lr.ph ], [ %inc88, %if.end71.for.body60_crit_edge ]
  %34 = ptrtoint ptr %base_irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base_irq, align 4
  %mul62 = shl i32 %i.1217, 5
  %add = add i32 %35, %mul62
  %36 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %call63 = tail call ptr @irq_alloc_generic_chip(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef %add, ptr noundef %36, ptr noundef nonnull @handle_level_irq) #10
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %do.end68, label %if.end71

do.end68:                                         ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #12
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #14
  br label %err

if.end71:                                         ; preds = %for.body60
  %irq_ack = getelementptr inbounds %struct.irq_chip_generic, ptr %call63, i32 1, i32 0, i32 4, i32 1, i32 1
  %37 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @irq_gc_ack_set_bit, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call63, i32 1, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call63, i32 1, i32 0, i32 4, i32 6
  %39 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @irq_gc_mask_set_bit, ptr %irq_unmask, align 4
  %40 = ptrtoint ptr %irq_setup to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %irq_setup, align 4
  %conv75 = zext i16 %41 to i32
  %mul76 = shl i32 %i.1217, 2
  %add77 = add i32 %mul76, %conv75
  %ack78 = getelementptr inbounds %struct.irq_chip_generic, ptr %call63, i32 2, i32 0, i32 4, i32 2
  %42 = ptrtoint ptr %ack78 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add77, ptr %ack78, align 4
  %43 = ptrtoint ptr %mask79 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mask79, align 2
  %conv80 = zext i16 %44 to i32
  %add82 = add i32 %mul76, %conv80
  %mask84 = getelementptr inbounds %struct.irq_chip_generic, ptr %call63, i32 2, i32 0, i32 4, i32 1, i32 1
  %45 = ptrtoint ptr %mask84 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add82, ptr %mask84, align 4
  %arrayidx85 = getelementptr [2 x i32], ptr %mask, i32 0, i32 %i.1217
  %46 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx85, align 4
  tail call void @irq_setup_generic_chip(ptr noundef nonnull %call63, i32 noundef %47, i32 noundef 0, i32 noundef 2048, i32 noundef 0) #10
  %48 = load ptr, ptr @prcm_irq_chips, align 4
  %arrayidx86 = getelementptr ptr, ptr %48, i32 %i.1217
  %49 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call63, ptr %arrayidx86, align 4
  %inc88 = add nuw nsw i32 %i.1217, 1
  %50 = ptrtoint ptr %nr_regs1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nr_regs1, align 2
  %conv57 = zext i8 %51 to i32
  %cmp58 = icmp ult i32 %inc88, %conv57
  br i1 %cmp58, label %if.end71.for.body60_crit_edge, label %if.end71.for.end89_crit_edge

if.end71.for.end89_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end89

if.end71.for.body60_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body60

for.end89:                                        ; preds = %if.end71.for.end89_crit_edge, %for.cond55.preheader.for.end89_crit_edge
  %52 = load ptr, ptr @prcm_irq_setup, align 4
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %for.end89.omap_prcm_event_to_irq.exit_crit_edge, label %for.cond.preheader.i

for.end89.omap_prcm_event_to_irq.exit_crit_edge:  ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_prcm_event_to_irq.exit

for.cond.preheader.i:                             ; preds = %for.end89
  %nr_irqs.i = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %nr_irqs.i, align 1
  %conv.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp14.not.i = icmp eq i8 %54, 0
  br i1 %cmp14.not.i, label %for.cond.preheader.i.omap_prcm_event_to_irq.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.omap_prcm_event_to_irq.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_prcm_event_to_irq.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %irqs.i = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %52, i32 0, i32 5
  %55 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %irqs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.omap_prcm_irq, ptr %56, i32 %i.015.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %58, ptr noundef nonnull dereferenceable(3) @.str.15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %base_irq.i = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %52, i32 0, i32 14
  %59 = ptrtoint ptr %base_irq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base_irq.i, align 4
  %offset.i = getelementptr %struct.omap_prcm_irq, ptr %56, i32 %i.015.i, i32 1
  %61 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %62, %60
  br label %omap_prcm_event_to_irq.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.omap_prcm_event_to_irq.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.omap_prcm_event_to_irq.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_prcm_event_to_irq.exit

omap_prcm_event_to_irq.exit:                      ; preds = %for.inc.i.omap_prcm_event_to_irq.exit_crit_edge, %if.then5.i, %for.cond.preheader.i.omap_prcm_event_to_irq.exit_crit_edge, %for.end89.omap_prcm_event_to_irq.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then5.i ], [ -2, %for.end89.omap_prcm_event_to_irq.exit_crit_edge ], [ -2, %for.cond.preheader.i.omap_prcm_event_to_irq.exit_crit_edge ], [ -2, %for.inc.i.omap_prcm_event_to_irq.exit_crit_edge ]
  %reconfigure_io_chain = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %irq_setup, i32 0, i32 11
  %63 = ptrtoint ptr %reconfigure_io_chain to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reconfigure_io_chain, align 4
  tail call void @omap_pcs_legacy_init(i32 noundef %retval.0.i, ptr noundef %64) #10
  br label %cleanup

err:                                              ; preds = %do.end68, %do.end50, %lor.lhs.false.err_crit_edge, %if.end12.err_crit_edge
  tail call void @omap_prcm_irq_cleanup()
  br label %cleanup

cleanup:                                          ; preds = %err, %omap_prcm_event_to_irq.exit, %do.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ -12, %err ], [ 0, %omap_prcm_event_to_irq.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_prcm_irq_handler(ptr noundef %desc) #3 align 64 {
entry:
  %pending = alloca [2 x i32], align 4
  %priority_pending = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pending) #10
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pending, align 4, !annotation !103
  %1 = getelementptr inbounds [2 x i32], ptr %pending, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priority_pending) #10
  %3 = ptrtoint ptr %priority_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %priority_pending, align 4, !annotation !103
  %4 = getelementptr inbounds [2 x i32], ptr %priority_pending, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !103
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i, align 8
  %8 = load ptr, ptr @prcm_irq_setup, align 4
  %nr_regs = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %nr_regs to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr_regs, align 2
  %conv = zext i8 %10 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %suspended = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %8, i32 0, i32 15
  %11 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %suspended, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %save_and_clear_irqen = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %8, i32 0, i32 9
  %13 = ptrtoint ptr %save_and_clear_irqen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %save_and_clear_irqen, align 4
  %saved_mask = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %8, i32 0, i32 12
  %15 = ptrtoint ptr %saved_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %saved_mask, align 4
  tail call void %14(ptr noundef %16) #10
  %17 = load ptr, ptr @prcm_irq_setup, align 4
  %suspend_save_flag = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %suspend_save_flag to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %suspend_save_flag, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = load ptr, ptr @prcm_irq_setup, align 4
  %suspended166 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %suspended166 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %suspended166, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not67 = icmp eq i8 %21, 0
  br i1 %tobool2.not67, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.cond.loopexit:                              ; preds = %for.body23.while.cond.loopexit_crit_edge, %for.end.while.cond.loopexit_crit_edge
  %22 = load ptr, ptr @prcm_irq_setup, align 4
  %suspended1 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %suspended1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %suspended1, align 4, !range !102
  %tobool2.not = icmp eq i8 %24, 0
  br i1 %tobool2.not, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.while.end_crit_edge

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %if.end.while.body_crit_edge
  %25 = phi ptr [ %22, %while.cond.loopexit.while.body_crit_edge ], [ %19, %if.end.while.body_crit_edge ]
  %read_pending_irqs = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %read_pending_irqs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_pending_irqs, align 4
  call void %27(ptr noundef nonnull %pending) #10
  %call4 = call i32 @_find_first_bit_be(ptr noundef nonnull %pending, i32 noundef %mul) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %mul)
  %cmp.not = icmp slt i32 %call4, %mul
  br i1 %cmp.not, label %if.end7, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end7:                                          ; preds = %while.body
  %28 = load ptr, ptr @prcm_irq_setup, align 4
  %nr_regs.i = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %nr_regs.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nr_regs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp15.not.i = icmp eq i8 %30, 0
  br i1 %cmp15.not.i, label %if.end7.omap_prcm_events_filter_priority.exit_crit_edge, label %for.body.lr.ph.i

if.end7.omap_prcm_events_filter_priority.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_prcm_events_filter_priority.exit

for.body.lr.ph.i:                                 ; preds = %if.end7
  %priority_mask.i = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %28, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %pending, i32 %i.016.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %33 = ptrtoint ptr %priority_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priority_mask.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %34, i32 %i.016.i
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx2.i, align 4
  %and.i = and i32 %36, %32
  %arrayidx3.i = getelementptr i32, ptr %priority_pending, i32 %i.016.i
  %37 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i, ptr %arrayidx3.i, align 4
  %xor.i = xor i32 %and.i, %32
  store i32 %xor.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %38 = ptrtoint ptr %nr_regs.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nr_regs.i, align 2
  %conv.i = zext i8 %39 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.omap_prcm_events_filter_priority.exit_crit_edge

for.body.i.omap_prcm_events_filter_priority.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_prcm_events_filter_priority.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

omap_prcm_events_filter_priority.exit:            ; preds = %for.body.i.omap_prcm_events_filter_priority.exit_crit_edge, %if.end7.omap_prcm_events_filter_priority.exit_crit_edge
  %call11 = call i32 @_find_next_bit_be(ptr noundef nonnull %priority_pending, i32 noundef %mul, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %mul)
  %cmp1262 = icmp ult i32 %call11, %mul
  br i1 %cmp1262, label %omap_prcm_events_filter_priority.exit.for.body_crit_edge, label %omap_prcm_events_filter_priority.exit.for.end_crit_edge

omap_prcm_events_filter_priority.exit.for.end_crit_edge: ; preds = %omap_prcm_events_filter_priority.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

omap_prcm_events_filter_priority.exit.for.body_crit_edge: ; preds = %omap_prcm_events_filter_priority.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %omap_prcm_events_filter_priority.exit.for.body_crit_edge
  %virtirq.063 = phi i32 [ %call17, %for.body.for.body_crit_edge ], [ %call11, %omap_prcm_events_filter_priority.exit.for.body_crit_edge ]
  %40 = load ptr, ptr @prcm_irq_setup, align 4
  %base_irq = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %base_irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base_irq, align 4
  %add = add i32 %42, %virtirq.063
  %call14 = call i32 @generic_handle_irq(i32 noundef %add) #10
  %add16 = add nuw i32 %virtirq.063, 1
  %call17 = call i32 @_find_next_bit_be(ptr noundef nonnull %priority_pending, i32 noundef %mul, i32 noundef %add16) #10
  %cmp12 = icmp ult i32 %call17, %mul
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %omap_prcm_events_filter_priority.exit.for.end_crit_edge
  %call19 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %mul, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call19, i32 %mul)
  %cmp2164 = icmp ult i32 %call19, %mul
  br i1 %cmp2164, label %for.end.for.body23_crit_edge, label %for.end.while.cond.loopexit_crit_edge

for.end.while.cond.loopexit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.loopexit

for.end.for.body23_crit_edge:                     ; preds = %for.end
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.end.for.body23_crit_edge
  %virtirq.165 = phi i32 [ %call30, %for.body23.for.body23_crit_edge ], [ %call19, %for.end.for.body23_crit_edge ]
  %43 = load ptr, ptr @prcm_irq_setup, align 4
  %base_irq24 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %base_irq24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_irq24, align 4
  %add25 = add i32 %45, %virtirq.165
  %call26 = call i32 @generic_handle_irq(i32 noundef %add25) #10
  %add29 = add nuw i32 %virtirq.165, 1
  %call30 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %mul, i32 noundef %add29) #10
  %cmp21 = icmp ult i32 %call30, %mul
  br i1 %cmp21, label %for.body23.for.body23_crit_edge, label %for.body23.while.cond.loopexit_crit_edge

for.body23.while.cond.loopexit_crit_edge:         ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.loopexit

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.loopexit.while.end_crit_edge, %if.end.while.end_crit_edge
  %irq_ack = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 6
  %46 = ptrtoint ptr %irq_ack to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %irq_ack, align 4
  %tobool32.not = icmp eq ptr %47, null
  br i1 %tobool32.not, label %while.end.if.end35_crit_edge, label %if.then33

while.end.if.end35_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %47(ptr noundef %irq_data) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %while.end.if.end35_crit_edge
  %irq_eoi = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 10
  %48 = ptrtoint ptr %irq_eoi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %irq_eoi, align 4
  %tobool36.not = icmp eq ptr %49, null
  br i1 %tobool36.not, label %if.end35.if.end40_crit_edge, label %if.then37

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %irq_data39 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %49(ptr noundef %irq_data39) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35.if.end40_crit_edge
  %irq_unmask = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 9
  %50 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %irq_unmask, align 4
  %irq_data41 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %51(ptr noundef %irq_data41) #10
  %52 = load ptr, ptr @prcm_irq_setup, align 4
  %ocp_barrier = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %ocp_barrier to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ocp_barrier, align 4
  call void %54() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priority_pending) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pending) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_alloc_generic_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_setup_generic_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_pcs_legacy_init(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap2_set_globals_prm(ptr noundef %prm) local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %prm, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prm_read_reset_sources() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prm_ll_data, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %2() #10
  br label %if.end36

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @prm_read_reset_sources.__already_done, align 1
  br i1 %.b39, label %land.end.if.end36_crit_edge, label %if.then7, !prof !104

land.end.if.end36_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @prm_read_reset_sources.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 377, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.prm_read_reset_sources) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then7, %land.end.if.end36_crit_edge, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ 4096, %if.then7 ], [ 4096, %land.end.if.end36_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @prm_was_any_context_lost_old(i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prm_ll_data, align 4
  %was_any_context_lost_old = getelementptr inbounds %struct.prm_ll_data, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %was_any_context_lost_old to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %was_any_context_lost_old, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 %2(i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %idx) #10
  br label %if.end36

land.end:                                         ; preds = %entry
  %.b40 = load i1, ptr @prm_was_any_context_lost_old.__already_done, align 1
  br i1 %.b40, label %land.end.if.end36_crit_edge, label %if.then7, !prof !104

land.end.if.end36_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @prm_was_any_context_lost_old.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 402, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.prm_was_any_context_lost_old) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then7, %land.end.if.end36_crit_edge, %if.then
  %ret.0.off0 = phi i1 [ %call, %if.then ], [ true, %if.then7 ], [ true, %land.end.if.end36_crit_edge ]
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prm_clear_context_loss_flags_old(i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prm_ll_data, align 4
  %clear_context_loss_flags_old = getelementptr inbounds %struct.prm_ll_data, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %clear_context_loss_flags_old to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clear_context_loss_flags_old, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %2(i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %idx) #10
  br label %if.end36

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @prm_clear_context_loss_flags_old.__already_done, align 1
  br i1 %.b39, label %land.end.if.end36_crit_edge, label %if.then7, !prof !104

land.end.if.end36_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @prm_clear_context_loss_flags_old.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.prm_clear_context_loss_flags_old) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then7, %land.end.if.end36_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_prm_assert_hardreset(i8 noundef zeroext %shift, i8 noundef zeroext %part, i16 noundef signext %prm_mod, i16 noundef zeroext %offset) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prm_ll_data, align 4
  %assert_hardreset = getelementptr inbounds %struct.prm_ll_data, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %assert_hardreset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %assert_hardreset, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @omap_prm_assert_hardreset.__already_done, align 1
  br i1 %.b39, label %land.end.return_crit_edge, label %if.then6, !prof !104

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @omap_prm_assert_hardreset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 440, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.omap_prm_assert_hardreset) #10
  br label %return

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %2(i8 noundef zeroext %shift, i8 noundef zeroext %part, i16 noundef signext %prm_mod, i16 noundef zeroext %offset) #10
  br label %return

return:                                           ; preds = %if.end35, %if.then6, %land.end.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end35 ], [ -22, %if.then6 ], [ -22, %land.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_prm_deassert_hardreset(i8 noundef zeroext %shift, i8 noundef zeroext %st_shift, i8 noundef zeroext %part, i16 noundef signext %prm_mod, i16 noundef zeroext %offset, i16 noundef zeroext %st_offset) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prm_ll_data, align 4
  %deassert_hardreset = getelementptr inbounds %struct.prm_ll_data, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %deassert_hardreset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %deassert_hardreset, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @omap_prm_deassert_hardreset.__already_done, align 1
  br i1 %.b39, label %land.end.return_crit_edge, label %if.then6, !prof !104

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @omap_prm_deassert_hardreset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 463, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.omap_prm_deassert_hardreset) #10
  br label %return

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %2(i8 noundef zeroext %shift, i8 noundef zeroext %st_shift, i8 noundef zeroext %part, i16 noundef signext %prm_mod, i16 noundef zeroext %offset, i16 noundef zeroext %st_offset) #10
  br label %return

return:                                           ; preds = %if.end35, %if.then6, %land.end.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end35 ], [ -22, %if.then6 ], [ -22, %land.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_prm_is_hardreset_asserted(i8 noundef zeroext %shift, i8 noundef zeroext %part, i16 noundef signext %prm_mod, i16 noundef zeroext %offset) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prm_ll_data, align 4
  %is_hardreset_asserted = getelementptr inbounds %struct.prm_ll_data, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %is_hardreset_asserted to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %is_hardreset_asserted, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @omap_prm_is_hardreset_asserted.__already_done, align 1
  br i1 %.b39, label %land.end.return_crit_edge, label %if.then6, !prof !104

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @omap_prm_is_hardreset_asserted.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 484, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.omap_prm_is_hardreset_asserted) #10
  br label %return

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %2(i8 noundef zeroext %shift, i8 noundef zeroext %part, i16 noundef signext %prm_mod, i16 noundef zeroext %offset) #10
  br label %return

return:                                           ; preds = %if.end35, %if.then6, %land.end.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end35 ], [ -22, %if.then6 ], [ -22, %land.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_prm_reconfigure_io_chain() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prcm_irq_setup, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %reconfigure_io_chain = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %reconfigure_io_chain to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reconfigure_io_chain, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %2() #10
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_prm_reset_system() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prm_ll_data, align 4
  %reset_system = getelementptr inbounds %struct.prm_ll_data, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %reset_system to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reset_system, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b48 = load i1, ptr @omap_prm_reset_system.__already_done, align 1
  br i1 %.b48, label %land.end.if.end27_crit_edge, label %if.then6, !prof !104

land.end.if.end27_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @omap_prm_reset_system.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 516, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.omap_prm_reset_system) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then6, %land.end.if.end27_crit_edge
  ret void

if.end35:                                         ; preds = %entry
  tail call void %2() #10
  br label %while.body

while.body:                                       ; preds = %while.body, %if.end35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !106
  tail call void asm sideeffect "wfe", "~{memory}"() #10, !srcloc !107
  br label %while.body
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_prm_clear_mod_irqs(i16 noundef signext %module, i8 noundef zeroext %regs, i32 noundef %wkst_mask) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prm_ll_data, align 4
  %clear_mod_irqs = getelementptr inbounds %struct.prm_ll_data, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %clear_mod_irqs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clear_mod_irqs, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @omap_prm_clear_mod_irqs.__already_done, align 1
  br i1 %.b39, label %land.end.return_crit_edge, label %if.then6, !prof !104

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @omap_prm_clear_mod_irqs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 542, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.omap_prm_clear_mod_irqs) #10
  br label %return

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %2(i16 noundef signext %module, i8 noundef zeroext %regs, i32 noundef %wkst_mask) #10
  br label %return

return:                                           ; preds = %if.end35, %if.then6, %land.end.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end35 ], [ -22, %if.then6 ], [ -22, %land.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_prm_vp_check_txdone(i8 noundef zeroext %vp_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prm_ll_data, align 4
  %vp_check_txdone = getelementptr inbounds %struct.prm_ll_data, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %vp_check_txdone to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vp_check_txdone, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @omap_prm_vp_check_txdone.__already_done, align 1
  br i1 %.b39, label %land.end.return_crit_edge, label %if.then6, !prof !104

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @omap_prm_vp_check_txdone.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 559, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.omap_prm_vp_check_txdone) #10
  br label %return

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %2(i8 noundef zeroext %vp_id) #10
  br label %return

return:                                           ; preds = %if.end35, %if.then6, %land.end.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end35 ], [ 0, %if.then6 ], [ 0, %land.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_prm_vp_clear_txdone(i8 noundef zeroext %vp_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prm_ll_data, align 4
  %vp_clear_txdone = getelementptr inbounds %struct.prm_ll_data, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %vp_clear_txdone to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vp_clear_txdone, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @omap_prm_vp_clear_txdone.__already_done, align 1
  br i1 %.b39, label %land.end.return_crit_edge, label %if.then6, !prof !104

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @omap_prm_vp_clear_txdone.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 576, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.omap_prm_vp_clear_txdone) #10
  br label %return

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %2(i8 noundef zeroext %vp_id) #10
  br label %return

return:                                           ; preds = %if.end35, %if.then6, %land.end.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @prm_register(ptr noundef %pld) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pld, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @prm_ll_data, align 4
  %cmp.not = icmp eq ptr %0, @null_prm_ll_data
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %pld, ptr @prm_ll_data, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.return_crit_edge ], [ -17, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @prm_unregister(ptr noundef readnone %pld) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pld, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr @prm_ll_data, align 4
  %cmp.not = icmp eq ptr %0, %pld
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @null_prm_ll_data, ptr @prm_ll_data, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_prm_base_init() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #10
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #10
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap_prcm_dt_match_table, ptr noundef nonnull %match) #10
  %tobool.not35 = icmp eq ptr %call, null
  br i1 %tobool.not35, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.036 = phi ptr [ %call18, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %match, align 4
  %data1 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data1, align 4
  %call2 = call i32 @of_address_to_resource(ptr noundef nonnull %np.036, i32 noundef 0, ptr noundef nonnull %res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %res, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %sub.i = sub i32 1, %8
  %add.i = add i32 %sub.i, %10
  %call5 = call ptr @ioremap(i32 noundef %8, i32 noundef %add.i) #10
  %mem = getelementptr inbounds %struct.omap_prcm_init_data, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5, ptr %mem, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp eq i32 %13, 2
  br i1 %cmp, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %offset = getelementptr inbounds %struct.omap_prcm_init_data, ptr %6, i32 0, i32 3
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %offset, align 4
  %conv = sext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %call5, i32 %conv
  store ptr %add.ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %16 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %res, align 4
  %add = add i32 %17, %conv
  store i32 %add, ptr @prm_base, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %np12 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %6, i32 0, i32 7
  %18 = ptrtoint ptr %np12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %np.036, ptr %np12, align 4
  %init = getelementptr inbounds %struct.omap_prcm_init_data, ptr %6, i32 0, i32 6
  %19 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init, align 4
  %tobool13.not = icmp eq ptr %20, null
  br i1 %tobool13.not, label %if.end11.for.inc_crit_edge, label %if.then14

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = call i32 %20(ptr noundef %6) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end11.for.inc_crit_edge
  %call18 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.036, ptr noundef nonnull @omap_prcm_dt_match_table, ptr noundef nonnull %match) #10
  %tobool.not = icmp eq ptr %call18, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call2, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_prcm_base_init() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2_prm_base_init() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @omap2_cm_base_init() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_cm_base_init() local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_prcm_init() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #10
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !103
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap_prcm_dt_match_table, ptr noundef nonnull %match) #10
  %tobool.not13 = icmp eq ptr %call, null
  br i1 %tobool.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.014 = phi ptr [ %call4, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %match, align 4
  %data1 = getelementptr inbounds %struct.of_device_id, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data1, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %mem = getelementptr inbounds %struct.omap_prcm_init_data, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 4
  %call2 = call i32 @omap2_clk_provider_init(ptr noundef nonnull %np.014, i32 noundef %6, ptr noundef null, ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %call4 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.014, ptr noundef nonnull @omap_prcm_dt_match_table, ptr noundef nonnull %match) #10
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call5 = call i32 @omap_cm_init() #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call2, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_provider_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_init() local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @prm_late_init() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prm_ll_data, align 4
  %late_init = getelementptr inbounds %struct.prm_ll_data, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %late_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %late_init, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %2() #10
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @am33xx_prm_init(ptr noundef) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap44xx_prm_init(ptr noundef) #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap2xxx_prm_init(ptr noundef) #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap3xxx_prm_init(ptr noundef) #4 section ".init.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 196, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omap_prcm_irq_cleanup._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omap_prcm_irq_cleanup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 273, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @omap_prcm_register_chain_handler._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @omap_prcm_register_chain_handler._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 278, i32 3}
!13 = !{ptr @omap_prcm_register_chain_handler._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @omap_prcm_register_chain_handler._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 311, i32 3}
!17 = !{ptr @omap_prcm_register_chain_handler._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @omap_prcm_register_chain_handler._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 317, i32 31}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 322, i32 4}
!23 = !{ptr @omap_prcm_register_chain_handler._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @omap_prcm_register_chain_handler._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 337, i32 31}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 377, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__func__.prm_read_reset_sources, !28, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 401, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__func__.prm_was_any_context_lost_old, !32, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 423, i32 3}
!37 = !{ptr @__func__.prm_clear_context_loss_flags_old, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 439, i32 3}
!40 = !{ptr @__func__.omap_prm_assert_hardreset, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 462, i32 3}
!43 = !{ptr @__func__.omap_prm_deassert_hardreset, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 483, i32 3}
!46 = !{ptr @__func__.omap_prm_is_hardreset_asserted, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 515, i32 3}
!49 = !{ptr @__func__.omap_prm_reset_system, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 541, i32 3}
!52 = !{ptr @__func__.omap_prm_clear_mod_irqs, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 558, i32 3}
!55 = !{ptr @__func__.omap_prm_vp_check_txdone, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 575, i32 3}
!58 = !{ptr @__func__.omap_prm_vp_clear_txdone, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__initcall__kmod_prm_common__288_817_prm_late_init4, !60, !"__initcall__kmod_prm_common__288_817_prm_late_init4", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 817, i32 1}
!61 = !{ptr @prcm_irq_chips, !62, !"prcm_irq_chips", i1 false, i1 false}
!62 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 55, i32 34}
!63 = !{ptr @prcm_irq_setup, !64, !"prcm_irq_setup", i1 false, i1 false}
!64 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 62, i32 36}
!65 = !{ptr @prm_base, !66, !"prm_base", i1 false, i1 false}
!66 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 65, i32 25}
!67 = !{ptr @prm_features, !68, !"prm_features", i1 false, i1 false}
!68 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 67, i32 5}
!69 = !{ptr @null_prm_ll_data, !70, !"null_prm_ll_data", i1 false, i1 false}
!70 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 73, i32 27}
!71 = !{ptr @prm_ll_data, !72, !"prm_ll_data", i1 false, i1 false}
!72 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 74, i32 28}
!73 = !{ptr @omap_prcm_dt_match_table, !74, !"omap_prcm_dt_match_table", i1 false, i1 false}
!74 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 704, i32 34}
!75 = !{ptr @am3_prm_data, !76, !"am3_prm_data", i1 false, i1 false}
!76 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 649, i32 35}
!77 = !{ptr @am4_prm_data, !78, !"am4_prm_data", i1 false, i1 false}
!78 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 690, i32 35}
!79 = !{ptr @dm814_pllss_data, !80, !"dm814_pllss_data", i1 false, i1 false}
!80 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 656, i32 35}
!81 = !{ptr @omap2_prm_data, !82, !"omap2_prm_data", i1 false, i1 false}
!82 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 629, i32 35}
!83 = !{ptr @omap3_prm_data, !84, !"omap3_prm_data", i1 false, i1 false}
!84 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 636, i32 35}
!85 = !{ptr @omap4_prm_data, !86, !"omap4_prm_data", i1 false, i1 false}
!86 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 663, i32 35}
!87 = !{ptr @scrm_data, !88, !"scrm_data", i1 false, i1 false}
!88 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 699, i32 35}
!89 = !{ptr @omap5_prm_data, !90, !"omap5_prm_data", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 672, i32 35}
!91 = !{ptr @dra7_prm_data, !92, !"dra7_prm_data", i1 false, i1 false}
!92 = !{!"../arch/arm/mach-omap2/prm_common.c", i32 681, i32 35}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i8 0, i8 2}
!103 = !{!"auto-init"}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2155927835}
!106 = !{i64 2155927677}
!107 = !{i64 2155927920}
