; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-gic-v3.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-v3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+gic_pmr_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_gic_pmr_sync\09\09\09\09"
module asm "\09.long\09__crc_gic_pmr_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gic_pmr_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22gic_pmr_sync\22\09\09\09\09\09"
module asm "__kstrtabns_gic_pmr_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gic_nonsecure_priorities\22, \22a\22\09"
module asm "\09.weak\09__crc_gic_nonsecure_priorities\09\09\09\09"
module asm "\09.long\09__crc_gic_nonsecure_priorities\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gic_nonsecure_priorities:\09\09\09\09\09"
module asm "\09.asciz \09\22gic_nonsecure_priorities\22\09\09\09\09\09"
module asm "__kstrtabns_gic_nonsecure_priorities:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gic_quirk = type { ptr, ptr, ptr, i32, i32 }
%struct.gic_chip_data = type { ptr, ptr, ptr, %struct.rdists, ptr, i64, i32, i64, i8, i32, ptr }
%struct.rdists = type { ptr, i32, ptr, i64, i32, i32, i32, i8, i8, i8, i8 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gic_kvm_info = type { i32, %struct.resource, i32, i8, %struct.resource, i8, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.redist_region = type { ptr, i32, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.partition_affinity = type { %struct.cpumask, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.71 = type { %struct.raw_spinlock, ptr, ptr, i32, i64, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@gic_pmr_sync = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__kstrtab_gic_pmr_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_gic_pmr_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_gic_pmr_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gic_pmr_sync to i32), ptr @__kstrtab_gic_pmr_sync, ptr @__kstrtabns_gic_pmr_sync }, section "___ksymtab+gic_pmr_sync", align 4
@gic_nonsecure_priorities = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__kstrtab_gic_nonsecure_priorities = external dso_local constant [0 x i8], align 1
@__kstrtabns_gic_nonsecure_priorities = external dso_local constant [0 x i8], align 1
@__ksymtab_gic_nonsecure_priorities = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gic_nonsecure_priorities to i32), ptr @__kstrtab_gic_nonsecure_priorities, ptr @__kstrtabns_gic_nonsecure_priorities }, section "___ksymtab+gic_nonsecure_priorities", align 4
@__setup_str_gicv3_nolpi_cfg = internal constant [20 x i8] c"irqchip.gicv3_nolpi\00", section ".init.rodata", align 1
@__setup_gicv3_nolpi_cfg = internal global %struct.obs_kernel_param { ptr @__setup_str_gicv3_nolpi_cfg, ptr @gicv3_nolpi_cfg, i32 1 }, section ".init.setup", align 4
@__of_table_gic_v3 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-v3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__pcpu_unique_has_rss = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@has_rss = weak dso_local global i8 0, section ".data..percpu", align 1
@gicv3_nolpi = internal global { i8, [31 x i8] } zeroinitializer, align 32
@gic_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013GICv3: %pOF: unable to map gic dist registers\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gic_of_init\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/irqchip/irq-gic-v3.c\00", [35 x i8] zeroinitializer }, align 32
@gic_of_init._entry_ptr = internal global ptr @gic_of_init._entry, section ".printk_index", align 4
@gic_of_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013GICv3: %pOF: no distributor detected, giving up\0A\00", [45 x i8] zeroinitializer }, align 32
@gic_of_init._entry_ptr.5 = internal global ptr @gic_of_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"#redistributor-regions\00", [41 x i8] zeroinitializer }, align 32
@gic_of_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 2006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013GICv3: %pOF: couldn't map region %d\0A\00", [57 x i8] zeroinitializer }, align 32
@gic_of_init._entry_ptr.9 = internal global ptr @gic_of_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"redistributor-stride\00", [43 x i8] zeroinitializer }, align 32
@gic_quirks = internal constant { [5 x %struct.gic_quirk], [60 x i8] } { [5 x %struct.gic_quirk] [%struct.gic_quirk { ptr @.str.11, ptr @.str.12, ptr @gic_enable_quirk_msm8996, i32 0, i32 0 }, %struct.gic_quirk { ptr @.str.13, ptr null, ptr @gic_enable_quirk_hip06_07, i32 33817659, i32 -1 }, %struct.gic_quirk { ptr @.str.14, ptr null, ptr @gic_enable_quirk_hip06_07, i32 0, i32 -1 }, %struct.gic_quirk { ptr @.str.15, ptr null, ptr @gic_enable_quirk_cavium_38539, i32 -1610611892, i32 -386920449 }, %struct.gic_quirk zeroinitializer], [60 x i8] zeroinitializer }, align 32
@gic_data = internal global %struct.gic_chip_data zeroinitializer, section ".data..read_mostly", align 8
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"GICv3: Qualcomm MSM8996 broken firmware\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,msm8996-gic-v3\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"GICv3: HIP06 erratum 161010803\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"GICv3: HIP07 erratum 161010803\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GICv3: Cavium erratum 38539\00", [36 x i8] zeroinitializer }, align 32
@gic_init_bases._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016GICv3: GIC: Using split EOI/Deactivate mode\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gic_init_bases\00", [17 x i8] zeroinitializer }, align 32
@gic_init_bases._entry_ptr = internal global ptr @gic_init_bases._entry, section ".printk_index", align 4
@gic_init_bases._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 1774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016GICv3: %d SPIs implemented\0A\00", [34 x i8] zeroinitializer }, align 32
@gic_init_bases._entry_ptr.20 = internal global ptr @gic_init_bases._entry.18, section ".printk_index", align 4
@gic_init_bases._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016GICv3: %d Extended SPIs implemented\0A\00", [57 x i8] zeroinitializer }, align 32
@gic_init_bases._entry_ptr.23 = internal global ptr @gic_init_bases._entry.21, section ".printk_index", align 4
@gic_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr @gic_irq_domain_select, ptr null, ptr null, ptr null, ptr @gic_irq_domain_alloc, ptr @gic_irq_domain_free, ptr null, ptr null, ptr @gic_irq_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@gic_init_bases._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.2, i32 1801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016GICv3: Distributor has %sRange Selector support\0A\00", [45 x i8] zeroinitializer }, align 32
@gic_init_bases._entry_ptr.26 = internal global ptr @gic_init_bases._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"no \00", [28 x i8] zeroinitializer }, align 32
@gic_init_bases._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.17, ptr @.str.2, i32 1806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013GICv3: Failed to initialize MBIs\0A\00", [60 x i8] zeroinitializer }, align 32
@gic_init_bases._entry_ptr.31 = internal global ptr @gic_init_bases._entry.29, section ".printk_index", align 4
@__boot_cpu_mode = external dso_local local_unnamed_addr global i32, align 4
@gic_irq_domain_select.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@gic_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_mask_irq, ptr null, ptr @gic_unmask_irq, ptr @gic_eoi_irq, ptr @gic_set_affinity, ptr @gic_retrigger, ptr @gic_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_irq_get_irqchip_state, ptr @gic_irq_set_irqchip_state, ptr null, ptr null, ptr @gic_ipi_send_mask, ptr @gic_irq_nmi_setup, ptr @gic_irq_nmi_teardown, i32 21 }, [56 x i8] zeroinitializer }, align 32
@gic_eoimode1_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_eoimode1_mask_irq, ptr null, ptr @gic_unmask_irq, ptr @gic_eoimode1_eoi_irq, ptr @gic_set_affinity, ptr @gic_retrigger, ptr @gic_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_irq_get_irqchip_state, ptr @gic_irq_set_irqchip_state, ptr @gic_irq_set_vcpu_affinity, ptr null, ptr @gic_ipi_send_mask, ptr @gic_irq_nmi_setup, ptr @gic_irq_nmi_teardown, i32 21 }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GICv3\00", [26 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@gic_do_wait_for_rwp._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.gic_do_wait_for_rwp = private unnamed_addr constant [20 x i8] c"gic_do_wait_for_rwp\00", align 1
@gic_do_wait_for_rwp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.gic_do_wait_for_rwp, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013GICv3: RWP timeout, gone fishing\0A\00", [60 x i8] zeroinitializer }, align 32
@gic_do_wait_for_rwp._entry_ptr = internal global ptr @gic_do_wait_for_rwp._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@gic_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014GICv3: GIC: PPI INTID%d is secure or misconfigured\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gic_set_type\00", [19 x i8] zeroinitializer }, align 32
@gic_set_type._entry_ptr = internal global ptr @gic_set_type._entry, section ".printk_index", align 4
@gic_irq_nmi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013GICv3: Cannot set NMI property of enabled IRQ %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gic_irq_nmi_setup\00", [46 x i8] zeroinitializer }, align 32
@gic_irq_nmi_setup._entry_ptr = internal global ptr @gic_irq_nmi_setup._entry, section ".printk_index", align 4
@gic_irq_nmi_teardown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.39, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gic_irq_nmi_teardown\00", [43 x i8] zeroinitializer }, align 32
@gic_irq_nmi_teardown._entry_ptr = internal global ptr @gic_irq_nmi_teardown._entry, section ".printk_index", align 4
@irqchip_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@gic_handle_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unexpected interrupt received!\0A\00", [32 x i8] zeroinitializer }, align 32
@gic_update_rdist_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016GICv3: %d PPIs implemented\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gic_update_rdist_properties\00", [36 x i8] zeroinitializer }, align 32
@gic_update_rdist_properties._entry_ptr = internal global ptr @gic_update_rdist_properties._entry, section ".printk_index", align 4
@gic_update_rdist_properties._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016GICv3: GICv4 features: %s%s%s\0A\00", [63 x i8] zeroinitializer }, align 32
@gic_update_rdist_properties._entry_ptr.48 = internal global ptr @gic_update_rdist_properties._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DirectLPI \00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RVPEID \00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Valid+Dirty \00", [19 x i8] zeroinitializer }, align 32
@gic_iterate_rdists._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014GICv3: No redistributor present @%p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gic_iterate_rdists\00", [45 x i8] zeroinitializer }, align 32
@gic_iterate_rdists._entry_ptr = internal global ptr @gic_iterate_rdists._entry, section ".printk_index", align 4
@__gic_update_rdist_properties.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gic_dist_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016GICv3: Enabling SGIs without active state\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gic_dist_init\00", [18 x i8] zeroinitializer }, align 32
@gic_dist_init._entry_ptr = internal global ptr @gic_dist_init._entry, section ".printk_index", align 4
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Distributor has extended ranges, but CPU%d doesn't\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CPU%d: mpidr %lx has no re-distributor!\0A\00", [55 x i8] zeroinitializer }, align 32
@__gic_populate_rdist.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&gic_data_rdist()->rd_lock\00", [37 x i8] zeroinitializer }, align 32
@__gic_populate_rdist._entry = internal constant %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 898, ptr null, ptr null }, align 1
@.str.59 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016GICv3: CPU%d: found redistributor %lx region %d:%pa\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__gic_populate_rdist\00", [43 x i8] zeroinitializer }, align 32
@__gic_populate_rdist._entry_ptr = internal global ptr @__gic_populate_rdist._entry, section ".printk_index", align 4
@gic_enable_redist._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.gic_enable_redist = private unnamed_addr constant [18 x i8] c"gic_enable_redist\00", align 1
@gic_enable_redist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.gic_enable_redist, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013GICv3: redistributor failed to %s...\0A\00", [56 x i8] zeroinitializer }, align 32
@gic_enable_redist._entry_ptr = internal global ptr @gic_enable_redist._entry, section ".printk_index", align 4
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@gic_cpu_sys_reg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013GICv3: GIC: unable to set SRE (disabled at EL2), panic ahead\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gic_cpu_sys_reg_init\00", [43 x i8] zeroinitializer }, align 32
@gic_cpu_sys_reg_init._entry_ptr = internal global ptr @gic_cpu_sys_reg_init._entry, section ".printk_index", align 4
@gic_cpu_sys_reg_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 1085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\012GICv3: CPU%d (%lx) can't SGI CPU%d (%lx), no RSS\0A\00", [44 x i8] zeroinitializer }, align 32
@gic_cpu_sys_reg_init._entry_ptr.68 = internal global ptr @gic_cpu_sys_reg_init._entry.66, section ".printk_index", align 4
@gic_cpu_sys_reg_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gic_cpu_sys_reg_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.2, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\012GICv3: RSS is required but GICD doesn't support it\0A\00", [42 x i8] zeroinitializer }, align 32
@gic_cpu_sys_reg_init._entry_ptr.71 = internal global ptr @gic_cpu_sys_reg_init._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"irqchip/arm/gicv3:starting\00", [37 x i8] zeroinitializer }, align 32
@gic_cpu_pm_notifier_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @gic_cpu_pm_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@gic_enable_nmi_support._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 1704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016GICv3: Pseudo-NMIs enabled using %s ICC_PMR_EL1 synchronisation\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gic_enable_nmi_support\00", [41 x i8] zeroinitializer }, align 32
@gic_enable_nmi_support._entry_ptr = internal global ptr @gic_enable_nmi_support._entry, section ".printk_index", align 4
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ppi-partitions\00", [17 x i8] zeroinitializer }, align 32
@gic_populate_ppi_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 1882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016GICv3: GIC: PPI partition %pOFn[%d] { \00", [55 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gic_populate_ppi_partitions\00", [36 x i8] zeroinitializer }, align 32
@gic_populate_ppi_partitions._entry_ptr = internal global ptr @gic_populate_ppi_partitions._entry, section ".printk_index", align 4
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"affinity\00", [23 x i8] zeroinitializer }, align 32
@gic_populate_ppi_partitions._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.80, ptr @.str.2, i32 1906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01c%pOF[%d] \00", [20 x i8] zeroinitializer }, align 32
@gic_populate_ppi_partitions._entry_ptr.84 = internal global ptr @gic_populate_ppi_partitions._entry.82, section ".printk_index", align 4
@gic_populate_ppi_partitions._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.80, ptr @.str.2, i32 1911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c}\0A\00", [27 x i8] zeroinitializer }, align 32
@gic_populate_ppi_partitions._entry_ptr.87 = internal global ptr @gic_populate_ppi_partitions._entry.85, section ".printk_index", align 4
@partition_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr @gic_irq_domain_select, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @partition_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@partition_domain_translate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@supports_deactivate_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@gic_v3_kvm_info = internal unnamed_addr global %struct.gic_kvm_info zeroinitializer, section ".init.data", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 2702231789, i64 2702231790]
@__sancov_gen_cov_switch_values.90 = internal global [98 x i64] [i64 96, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 1056, i64 1057, i64 1058, i64 1059, i64 1060, i64 1061, i64 1062, i64 1063, i64 1064, i64 1065, i64 1066, i64 1067, i64 1068, i64 1069, i64 1070, i64 1071, i64 1072, i64 1073, i64 1074, i64 1075, i64 1076, i64 1077, i64 1078, i64 1079, i64 1080, i64 1081, i64 1082, i64 1083, i64 1084, i64 1085, i64 1086, i64 1087, i64 1088, i64 1089, i64 1090, i64 1091, i64 1092, i64 1093, i64 1094, i64 1095, i64 1096, i64 1097, i64 1098, i64 1099, i64 1100, i64 1101, i64 1102, i64 1103, i64 1104, i64 1105, i64 1106, i64 1107, i64 1108, i64 1109, i64 1110, i64 1111, i64 1112, i64 1113, i64 1114, i64 1115, i64 1116, i64 1117, i64 1118, i64 1119]
@__sancov_gen_cov_switch_values.91 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.92 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.94 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.96 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.99 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.100 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.102 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.104 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.106 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.109 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.111 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.113 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.117 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.118 = internal global [11 x i64] [i64 9, i64 32, i64 256, i64 384, i64 512, i64 640, i64 768, i64 896, i64 1024, i64 3072, i64 24576]
@__sancov_gen_cov_switch_values.119 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 64]
@__sancov_gen_cov_switch_values.122 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.123 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"gic_pmr_sync\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 97, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [25 x i8] c"gic_nonsecure_priorities\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 100, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"gicv3_nolpi\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1099, i32 13 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1979, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1985, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1989, i32 33 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 2006, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 2013, i32 33 }
@___asan_gen_.164 = private unnamed_addr constant [11 x i8] c"gic_quirks\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1646, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1648, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1649, i32 17 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1653, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1659, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1672, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1757, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1774, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1775, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [19 x i8] c"gic_irq_domain_ops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1563, i32 36 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1800, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1806, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant [9 x i8] c"gic_chip\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1333, i32 24 }
@___asan_gen_.227 = private unnamed_addr constant [18 x i8] c"gic_eoimode1_chip\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1351, i32 24 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1334, i32 12 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 216, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 606, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 495, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 532, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 732, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 965, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 967, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 847, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 815, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1125, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 912, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 891, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 895, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 280, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 995, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1083, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1096, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1237, i32 7 }
@___asan_gen_.368 = private unnamed_addr constant [26 x i8] c"gic_cpu_pm_notifier_block\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1320, i32 30 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1703, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1856, i32 46 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1881, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1884, i32 51 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1906, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1911, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant [21 x i8] c"partition_domain_ops\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 1603, i32 36 }
@___asan_gen_.410 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 108, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [24 x i8] c"supports_deactivate_key\00", align 1
@___asan_gen_.414 = private constant [32 x i8] c"../drivers/irqchip/irq-gic-v3.c\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 62, i32 8 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__gic_populate_rdist._entry, ptr @__gic_populate_rdist._entry_ptr, ptr @__ksymtab_gic_nonsecure_priorities, ptr @__ksymtab_gic_pmr_sync, ptr @__of_table_gic_v3, ptr @__setup_gicv3_nolpi_cfg, ptr @gic_cpu_sys_reg_init._entry, ptr @gic_cpu_sys_reg_init._entry.66, ptr @gic_cpu_sys_reg_init._entry.69, ptr @gic_cpu_sys_reg_init._entry_ptr, ptr @gic_cpu_sys_reg_init._entry_ptr.68, ptr @gic_cpu_sys_reg_init._entry_ptr.71, ptr @gic_dist_init._entry, ptr @gic_dist_init._entry_ptr, ptr @gic_do_wait_for_rwp._entry, ptr @gic_do_wait_for_rwp._entry_ptr, ptr @gic_enable_nmi_support._entry, ptr @gic_enable_nmi_support._entry_ptr, ptr @gic_enable_redist._entry, ptr @gic_enable_redist._entry_ptr, ptr @gic_init_bases._entry, ptr @gic_init_bases._entry.18, ptr @gic_init_bases._entry.21, ptr @gic_init_bases._entry.24, ptr @gic_init_bases._entry.29, ptr @gic_init_bases._entry_ptr, ptr @gic_init_bases._entry_ptr.20, ptr @gic_init_bases._entry_ptr.23, ptr @gic_init_bases._entry_ptr.26, ptr @gic_init_bases._entry_ptr.31, ptr @gic_irq_nmi_setup._entry, ptr @gic_irq_nmi_setup._entry_ptr, ptr @gic_irq_nmi_teardown._entry, ptr @gic_irq_nmi_teardown._entry_ptr, ptr @gic_iterate_rdists._entry, ptr @gic_iterate_rdists._entry_ptr, ptr @gic_of_init._entry, ptr @gic_of_init._entry.3, ptr @gic_of_init._entry.7, ptr @gic_of_init._entry_ptr, ptr @gic_of_init._entry_ptr.5, ptr @gic_of_init._entry_ptr.9, ptr @gic_populate_ppi_partitions._entry, ptr @gic_populate_ppi_partitions._entry.82, ptr @gic_populate_ppi_partitions._entry.85, ptr @gic_populate_ppi_partitions._entry_ptr, ptr @gic_populate_ppi_partitions._entry_ptr.84, ptr @gic_populate_ppi_partitions._entry_ptr.87, ptr @gic_set_type._entry, ptr @gic_set_type._entry_ptr, ptr @gic_update_rdist_properties._entry, ptr @gic_update_rdist_properties._entry.46, ptr @gic_update_rdist_properties._entry_ptr, ptr @gic_update_rdist_properties._entry_ptr.48, ptr @gic_pmr_sync, ptr @gic_nonsecure_priorities, ptr @gicv3_nolpi, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @gic_quirks, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @gic_irq_domain_ops, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @gic_chip, ptr @gic_eoimode1_chip, ptr @.str.32, ptr @gic_do_wait_for_rwp._rs, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @gic_enable_redist._rs, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @gic_cpu_pm_notifier_block, ptr @.str.73, ptr @.str.74, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @partition_domain_ops, ptr @.str.88, ptr @supports_deactivate_key], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_pmr_sync to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_nonsecure_priorities to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv3_nolpi to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_of_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_of_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_quirks to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_init_bases._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_init_bases._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_init_bases._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_init_bases._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_init_bases._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_eoimode1_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_do_wait_for_rwp._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_do_wait_for_rwp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_irq_nmi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_irq_nmi_teardown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_update_rdist_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_update_rdist_properties._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_iterate_rdists._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_dist_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_enable_redist._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_enable_redist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_cpu_sys_reg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_cpu_sys_reg_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_cpu_sys_reg_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_cpu_pm_notifier_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_enable_nmi_support._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_populate_ppi_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_populate_ppi_partitions._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_populate_ppi_partitions._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @partition_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supports_deactivate_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gicv3_nolpi_cfg(ptr noundef %buf) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull @gicv3_nolpi) #12
  ret i32 %call.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  %redist_stride = alloca i64, align 8
  %nr_redist_regions = alloca i32, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %redist_stride) #12
  %0 = ptrtoint ptr %redist_stride to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %redist_stride, align 8, !annotation !227
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_redist_regions) #12
  %1 = ptrtoint ptr %nr_redist_regions to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nr_redist_regions, align 4, !annotation !227
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node) #15
  br label %cleanup64

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 65512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !228
  %3 = lshr i32 %2, 24
  %and.i = and i32 %3, 240
  %4 = add nsw i32 %and.i, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %switch.selectcmp.i = icmp ult i32 %4, 32
  br i1 %switch.selectcmp.i, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %node) #15
  br label %out_unmap_dist

if.end10:                                         ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.6, ptr noundef nonnull %nr_redist_regions, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool12.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %nr_redist_regions to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %nr_redist_regions, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %6 = ptrtoint ptr %nr_redist_regions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_redist_regions, align 4
  %8 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 12) #12
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end14.out_unmap_dist_crit_edge, label %if.end7.i.i, !prof !229

if.end14.out_unmap_dist_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unmap_dist

if.end7.i.i:                                      ; preds = %if.end14
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #16
  %tobool16.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool16.not, label %if.end7.i.i.out_unmap_dist_crit_edge, label %for.cond.preheader

if.end7.i.i.out_unmap_dist_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unmap_dist

for.cond.preheader:                               ; preds = %if.end7.i.i
  %11 = ptrtoint ptr %nr_redist_regions to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_redist_regions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp111.not = icmp eq i32 %12, 0
  br i1 %cmp111.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0112 = phi i32 [ %add, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #12
  %add = add nuw i32 %i.0112, 1
  %13 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call19 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef %add, ptr noundef nonnull %res) #12
  %call21 = call ptr @of_iomap(ptr noundef %node, i32 noundef %add) #12
  %arrayidx = getelementptr %struct.redist_region, ptr %call8.i.i, i32 %i.0112
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call21, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool22.not = icmp ne i32 %call19, 0
  %tobool25.not = icmp eq ptr %call21, null
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool25.not
  br i1 %or.cond, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %node, i32 noundef %i.0112) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #12
  br label %out_unmap_rdist

cleanup:                                          ; preds = %for.body
  %15 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %res, align 4
  %phys_base = getelementptr %struct.redist_region, ptr %call8.i.i, i32 %i.0112, i32 1
  %17 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %phys_base, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #12
  %18 = ptrtoint ptr %nr_redist_regions to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_redist_regions, align 4
  %cmp = icmp ult i32 %add, %19
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call35 = call i32 @of_property_read_u64(ptr noundef %node, ptr noundef nonnull @.str.10, ptr noundef nonnull %redist_stride) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %for.end.if.end38_crit_edge, label %if.then37

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %redist_stride to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %redist_stride, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %for.end.if.end38_crit_edge
  call void @gic_enable_of_quirks(ptr noundef %node, ptr noundef nonnull @gic_quirks, ptr noundef nonnull @gic_data) #12
  %21 = ptrtoint ptr %nr_redist_regions to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_redist_regions, align 4
  %23 = ptrtoint ptr %redist_stride to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %redist_stride, align 8
  %fwnode = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %call39 = call fastcc i32 @gic_init_bases(ptr noundef nonnull %call, ptr noundef nonnull %call8.i.i, i32 noundef %22, i64 noundef %24, ptr noundef %fwnode) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.out_unmap_rdist_crit_edge

if.end38.out_unmap_rdist_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unmap_rdist

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @gic_populate_ppi_partitions(ptr noundef %node) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @supports_deactivate_key, i32 1), ptr blockaddress(@gic_of_init, %cleanup64)) #12
          to label %if.then49 [label %cleanup64], !srcloc !230

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @gic_of_setup_kvm_info(ptr noundef %node) #17
  br label %cleanup64

out_unmap_rdist:                                  ; preds = %if.end38.out_unmap_rdist_crit_edge, %cleanup.thread
  %err.2 = phi i32 [ %call39, %if.end38.out_unmap_rdist_crit_edge ], [ -19, %cleanup.thread ]
  %25 = ptrtoint ptr %nr_redist_regions to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_redist_regions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp52113.not = icmp eq i32 %26, 0
  br i1 %cmp52113.not, label %out_unmap_rdist.for.end63_crit_edge, label %out_unmap_rdist.for.body53_crit_edge

out_unmap_rdist.for.body53_crit_edge:             ; preds = %out_unmap_rdist
  br label %for.body53

out_unmap_rdist.for.end63_crit_edge:              ; preds = %out_unmap_rdist
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end63

for.body53:                                       ; preds = %for.inc61.for.body53_crit_edge, %out_unmap_rdist.for.body53_crit_edge
  %i.1114 = phi i32 [ %inc62, %for.inc61.for.body53_crit_edge ], [ 0, %out_unmap_rdist.for.body53_crit_edge ]
  %arrayidx54 = getelementptr %struct.redist_region, ptr %call8.i.i, i32 %i.1114
  %27 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx54, align 4
  %tobool56.not = icmp eq ptr %28, null
  br i1 %tobool56.not, label %for.body53.for.inc61_crit_edge, label %if.then57

for.body53.for.inc61_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc61

if.then57:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  call void @iounmap(ptr noundef nonnull %28) #12
  br label %for.inc61

for.inc61:                                        ; preds = %if.then57, %for.body53.for.inc61_crit_edge
  %inc62 = add nuw i32 %i.1114, 1
  %29 = ptrtoint ptr %nr_redist_regions to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_redist_regions, align 4
  %cmp52 = icmp ult i32 %inc62, %30
  br i1 %cmp52, label %for.inc61.for.body53_crit_edge, label %for.inc61.for.end63_crit_edge

for.inc61.for.end63_crit_edge:                    ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end63

for.inc61.for.body53_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53

for.end63:                                        ; preds = %for.inc61.for.end63_crit_edge, %out_unmap_rdist.for.end63_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #12
  br label %out_unmap_dist

out_unmap_dist:                                   ; preds = %for.end63, %if.end7.i.i.out_unmap_dist_crit_edge, %if.end14.out_unmap_dist_crit_edge, %do.end7
  %err.3 = phi i32 [ -19, %do.end7 ], [ %err.2, %for.end63 ], [ -12, %if.end7.i.i.out_unmap_dist_crit_edge ], [ -12, %if.end14.out_unmap_dist_crit_edge ]
  call void @iounmap(ptr noundef nonnull %call) #12
  br label %cleanup64

cleanup64:                                        ; preds = %out_unmap_dist, %if.then49, %if.end42, %do.end
  %retval.0 = phi i32 [ %err.3, %out_unmap_dist ], [ -6, %do.end ], [ 0, %if.then49 ], [ 0, %if.end42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_redist_regions) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %redist_stride) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_enable_of_quirks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gic_init_bases(ptr noundef %dist_base, ptr noundef %rdist_regs, i32 noundef %nr_redist_regions, i64 noundef %redist_stride, ptr noundef %handle) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__boot_cpu_mode to i32))
  %0 = load i32, ptr @__boot_cpu_mode, align 4
  %1 = and i32 %0, -2147483617
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %1)
  %2 = icmp eq i32 %1, 26
  br i1 %2, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @static_key_disable(ptr noundef nonnull @supports_deactivate_key) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @supports_deactivate_key, i32 1), ptr blockaddress(@gic_init_bases, %if.end8)) #12
          to label %do.end [label %if.end8], !srcloc !230

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #15
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end
  store ptr %handle, ptr @gic_data, align 8
  store ptr %dist_base, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  store ptr %rdist_regs, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 2), align 8
  store i32 %nr_redist_regions, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 6), align 8
  store i64 %redist_stride, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 5), align 8
  %add.ptr = getelementptr i8, ptr %dist_base, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !228
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  store i32 %4, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %add.ptr12 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #12, !srcloc !228
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void @gic_enable_quirks(i32 noundef %7, ptr noundef nonnull @gic_quirks, ptr noundef nonnull @gic_data) #12
  %8 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and = shl i32 %8, 5
  %add = and i32 %and, 992
  %9 = tail call i32 @llvm.umin.i32(i32 %add, i32 988)
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %9) #15
  %10 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and25 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %11 = lshr i32 %10, 22
  %add29 = and i32 %11, 992
  %mul30 = add nuw nsw i32 %add29, 32
  %cond33 = select i1 %tobool26.not, i32 0, i32 %mul30
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %cond33) #15
  %12 = load i64, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 7), align 8
  %and35 = and i64 %12, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35)
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end8.if.end42_crit_edge

if.end8.if.end42_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then37:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %13 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %add.ptr39 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #12, !srcloc !228
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  store i32 %15, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 5), align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end8.if.end42_crit_edge
  %call.i = tail call ptr @__irq_domain_add(ptr noundef %handle, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @gic_irq_domain_ops, ptr noundef nonnull @gic_data) #12
  store ptr %call.i, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %call44 = tail call noalias ptr @__alloc_percpu(i32 noundef 72, i32 noundef 8) #16
  store ptr %call44, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  store i32 16843009, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 7), align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %tobool45.not = icmp eq ptr %16, null
  %tobool79.not = icmp eq ptr %call44, null
  %or.cond = select i1 %tobool45.not, i1 true, i1 %tobool79.not
  br i1 %or.cond, label %if.then112, label %if.end113, !prof !231

if.then112:                                       ; preds = %if.end42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1792, i32 noundef 9, ptr noundef null) #12
  %17 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %tobool150.not = icmp eq ptr %17, null
  br i1 %tobool150.not, label %if.then112.if.end152_crit_edge, label %if.then151

if.then112.if.end152_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.end113:                                        ; preds = %if.end42
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %16, i32 noundef 1) #12
  %and114 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  %and114.lobit = lshr exact i32 %and114, 26
  %18 = trunc i32 %and114.lobit to i8
  store i8 %18, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 8), align 8
  %cond126 = select i1 %tobool115.not, ptr @.str.28, ptr @.str.27
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %cond126) #15
  %and128 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end113.if.end140_crit_edge, label %if.then130

if.end113.if.end140_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end140

if.then130:                                       ; preds = %if.end113
  %19 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %call131 = tail call i32 @mbi_init(ptr noundef %handle, ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.then130.if.end140_crit_edge, label %do.end136

if.then130.if.end140_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end140

do.end136:                                        ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #15
  br label %if.end140

if.end140:                                        ; preds = %do.end136, %if.then130.if.end140_crit_edge, %if.end113.if.end140_crit_edge
  %call141 = tail call i32 @set_handle_irq(ptr noundef nonnull @gic_handle_irq) #15
  store i32 -1, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %call.i166 = tail call fastcc i32 @gic_iterate_rdists(ptr noundef nonnull @__gic_update_rdist_properties) #12
  %20 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i = icmp eq i32 %20, -1
  br i1 %cmp.i, label %do.end.i, label %if.end140.do.end24.i_crit_edge, !prof !229

if.end140.do.end24.i_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24.i

do.end.i:                                         ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 963, i32 noundef 9, ptr noundef null) #12
  store i32 0, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  br label %do.end24.i

do.end24.i:                                       ; preds = %do.end.i, %if.end140.do.end24.i_crit_edge
  %21 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %21) #15
  %22 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 7), align 4, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool27.not.i = icmp eq i8 %22, 0
  br i1 %tobool27.not.i, label %do.end24.i.gic_update_rdist_properties.exit_crit_edge, label %do.end31.i

do.end24.i.gic_update_rdist_properties.exit_crit_edge: ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gic_update_rdist_properties.exit

do.end31.i:                                       ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 9), align 2, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool33.not.i = icmp eq i8 %23, 0
  %cond.i = select i1 %tobool33.not.i, ptr @.str.27, ptr @.str.49
  %24 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 8), align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool34.not.i = icmp eq i8 %24, 0
  %cond35.i = select i1 %tobool34.not.i, ptr @.str.27, ptr @.str.50
  %25 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 10), align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool36.not.i = icmp eq i8 %25, 0
  %cond37.i = select i1 %tobool36.not.i, ptr @.str.27, ptr @.str.51
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond35.i, ptr noundef nonnull %cond37.i) #15
  br label %gic_update_rdist_properties.exit

gic_update_rdist_properties.exit:                 ; preds = %do.end31.i, %do.end24.i.gic_update_rdist_properties.exit_crit_edge
  tail call fastcc void @gic_dist_init() #17
  tail call fastcc void @gic_cpu_init()
  tail call fastcc void @gic_smp_init() #17
  %call.i167 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @gic_cpu_pm_notifier_block) #12
  %26 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !228
  %28 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %gic_update_rdist_properties.exit.if.else_crit_edge, label %gic_dist_supports_lpis.exit

gic_update_rdist_properties.exit.if.else_crit_edge: ; preds = %gic_update_rdist_properties.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

gic_dist_supports_lpis.exit:                      ; preds = %gic_update_rdist_properties.exit
  %29 = load i8, ptr @gicv3_nolpi, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %tobool143.not = icmp eq i8 %29, 1
  br i1 %tobool143.not, label %gic_dist_supports_lpis.exit.if.else_crit_edge, label %if.then144

gic_dist_supports_lpis.exit.if.else_crit_edge:    ; preds = %gic_dist_supports_lpis.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then144:                                       ; preds = %gic_dist_supports_lpis.exit
  call void @__sanitizer_cov_trace_pc() #14
  %30 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %call145 = tail call i32 @its_init(ptr noundef %handle, ptr noundef getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), ptr noundef %30) #12
  %call146 = tail call i32 @its_cpu_init() #12
  %call147 = tail call i32 @its_lpi_memreserve_init() #15
  br label %cleanup

if.else:                                          ; preds = %gic_dist_supports_lpis.exit.if.else_crit_edge, %gic_update_rdist_properties.exit.if.else_crit_edge
  %31 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %call148 = tail call i32 @gicv2m_init(ptr noundef %handle, ptr noundef %31) #12
  br label %cleanup

if.then151:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @irq_domain_remove(ptr noundef nonnull %17) #12
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.then112.if.end152_crit_edge
  %32 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  tail call void @free_percpu(ptr noundef %32) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end152, %if.else, %if.then144
  %retval.0 = phi i32 [ -12, %if.end152 ], [ 0, %if.else ], [ 0, %if.then144 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gic_populate_ppi_partitions(ptr noundef %gic_node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %cpu_phandle = alloca i32, align 4
  %ppi_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_child_by_name(ptr noundef %gic_node, ptr noundef nonnull @.str.78) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup289_crit_edge, label %if.end

entry.cleanup289_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup289

if.end:                                           ; preds = %entry
  %0 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4) #12
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !229

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  store ptr null, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 10), align 8
  br label %cleanup289

if.end7.i.i:                                      ; preds = %if.end
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #16
  store ptr %call8.i.i, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 10), align 8
  %tobool2.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not, label %if.end7.i.i.cleanup289_crit_edge, label %if.end4

if.end7.i.i.cleanup289_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup289

if.end4:                                          ; preds = %if.end7.i.i
  %call.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #12
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end4.out_put_node_crit_edge, label %if.end4.for.body.i_crit_edge

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

if.end4.out_put_node_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put_node

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end4.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end4.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %child.06.i) #12
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool6.not = icmp eq i32 %inc.i, 0
  br i1 %tobool6.not, label %of_get_child_count.exit.out_put_node_crit_edge, label %if.end8

of_get_child_count.exit.out_put_node_crit_edge:   ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put_node

if.end8:                                          ; preds = %of_get_child_count.exit
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i, i32 8) #12
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end8.do.end_crit_edge, label %if.end7.i.i363, !prof !229

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end7.i.i363:                                   ; preds = %if.end8
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i362 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #16
  %tobool10.not = icmp eq ptr %call8.i.i362, null
  br i1 %tobool10.not, label %if.end7.i.i363.do.end_crit_edge, label %if.end35.critedge, !prof !229

if.end7.i.i363.do.end_crit_edge:                  ; preds = %if.end7.i.i363
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %if.end7.i.i363.do.end_crit_edge, %if.end8.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1870, i32 noundef 9, ptr noundef null) #12
  br label %out_put_node

if.end35.critedge:                                ; preds = %if.end7.i.i363
  %call36 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #12
  %cmp.not382 = icmp eq ptr %call36, null
  br i1 %cmp.not382, label %if.end35.critedge.for.cond202.preheader_crit_edge, label %if.end35.critedge.for.body_crit_edge

if.end35.critedge.for.body_crit_edge:             ; preds = %if.end35.critedge
  br label %for.body

if.end35.critedge.for.cond202.preheader_crit_edge: ; preds = %if.end35.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond202.preheader

for.cond202.preheader:                            ; preds = %do.end195.for.cond202.preheader_crit_edge, %if.end35.critedge.for.cond202.preheader_crit_edge
  %7 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp203386.not = icmp eq i32 %7, 0
  br i1 %cmp203386.not, label %for.cond202.preheader.out_put_node_crit_edge, label %for.body204.lr.ph

for.cond202.preheader.out_put_node_crit_edge:     ; preds = %for.cond202.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put_node

for.body204.lr.ph:                                ; preds = %for.cond202.preheader
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %ppi_fwspec, i32 0, i32 1
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %ppi_fwspec, i32 0, i32 2
  %arrayinit.element = getelementptr inbounds %struct.irq_fwspec, ptr %ppi_fwspec, i32 0, i32 2, i32 1
  %arrayinit.element205 = getelementptr inbounds %struct.irq_fwspec, ptr %ppi_fwspec, i32 0, i32 2, i32 2
  %8 = getelementptr inbounds %struct.irq_fwspec, ptr %ppi_fwspec, i32 0, i32 2, i32 3
  br label %for.body204

for.body:                                         ; preds = %do.end195.for.body_crit_edge, %if.end35.critedge.for.body_crit_edge
  %child_part.0384 = phi ptr [ %call200, %do.end195.for.body_crit_edge ], [ %call36, %if.end35.critedge.for.body_crit_edge ]
  %part_idx.0383 = phi i32 [ %inc198, %do.end195.for.body_crit_edge ], [ 0, %if.end35.critedge.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.partition_affinity, ptr %call8.i.i362, i32 %part_idx.0383
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %child_part.0384, i32 0, i32 3
  %partition_id = getelementptr %struct.partition_affinity, ptr %call8.i.i362, i32 %part_idx.0383, i32 1
  %9 = ptrtoint ptr %partition_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fwnode.i, ptr %partition_id, align 4
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull %child_part.0384, i32 noundef %part_idx.0383) #15
  %call43 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child_part.0384, ptr noundef nonnull @.str.81, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call43)
  %cmp45 = icmp slt i32 %call43, 1
  br i1 %cmp45, label %if.end67, label %for.body.for.body77_crit_edge, !prof !229

for.body.for.body77_crit_edge:                    ; preds = %for.body
  br label %for.body77

if.end67:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1886, i32 noundef 9, ptr noundef null) #12
  br label %do.end195

for.body77:                                       ; preds = %cleanup.for.body77_crit_edge, %for.body.for.body77_crit_edge
  %i.0381 = phi i32 [ %inc, %cleanup.for.body77_crit_edge ], [ 0, %for.body.for.body77_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_phandle) #12
  %10 = ptrtoint ptr %cpu_phandle to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %cpu_phandle, align 4, !annotation !227
  %call78 = call i32 @of_property_read_u32_index(ptr noundef nonnull %child_part.0384, ptr noundef nonnull @.str.81, i32 noundef %i.0381, ptr noundef nonnull %cpu_phandle) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool80.not = icmp eq i32 %call78, 0
  br i1 %tobool80.not, label %if.end112, label %do.end96, !prof !233

do.end96:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1895, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end112:                                        ; preds = %for.body77
  %11 = ptrtoint ptr %cpu_phandle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu_phandle, align 4
  %call113 = call ptr @of_find_node_by_phandle(i32 noundef %12) #12
  %tobool115.not = icmp eq ptr %call113, null
  br i1 %tobool115.not, label %do.end133, label %if.end149, !prof !229

do.end133:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1899, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end149:                                        ; preds = %if.end112
  %call150 = call i32 @of_cpu_node_to_id(ptr noundef nonnull %call113) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp152 = icmp slt i32 %call150, 0
  br i1 %cmp152, label %do.end168, label %do.end187, !prof !229

do.end168:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1903, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

do.end187:                                        ; preds = %if.end149
  %call189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull %call113, i32 noundef %call150) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call150)
  %cmp.not.i.i.i = icmp ugt i32 %13, %call150
  br i1 %cmp.not.i.i.i, label %do.end187.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

do.end187.cpumask_set_cpu.exit_crit_edge:         ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %do.end187
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i366, !prof !233

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

if.then.i.i.i366:                                 ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i366, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %do.end187.cpumask_set_cpu.exit_crit_edge
  call void @_set_bit(i32 noundef %call150, ptr noundef %arrayidx) #12
  br label %cleanup

cleanup:                                          ; preds = %cpumask_set_cpu.exit, %do.end168, %do.end133, %do.end96
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_phandle) #12
  %inc = add nuw nsw i32 %i.0381, 1
  %exitcond.not = icmp eq i32 %inc, %call43
  br i1 %exitcond.not, label %cleanup.do.end195_crit_edge, label %cleanup.for.body77_crit_edge

cleanup.for.body77_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body77

cleanup.do.end195_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end195

do.end195:                                        ; preds = %cleanup.do.end195_crit_edge, %if.end67
  %call197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #15
  %inc198 = add i32 %part_idx.0383, 1
  %call200 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %child_part.0384) #12
  %cmp.not = icmp eq ptr %call200, null
  br i1 %cmp.not, label %do.end195.for.cond202.preheader_crit_edge, label %do.end195.for.body_crit_edge

do.end195.for.body_crit_edge:                     ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end195.for.cond202.preheader_crit_edge:        ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond202.preheader

for.body204:                                      ; preds = %cleanup281.for.body204_crit_edge, %for.body204.lr.ph
  %i.1387 = phi i32 [ 0, %for.body204.lr.ph ], [ %inc287, %cleanup281.for.body204_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ppi_fwspec) #12
  %14 = load ptr, ptr @gic_data, align 8
  %15 = ptrtoint ptr %ppi_fwspec to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %ppi_fwspec, align 4
  %16 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %param_count, align 4
  %17 = call ptr @memset(ptr %8, i32 0, i32 52)
  %18 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1592735506, ptr %param, align 4
  %19 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.1387, ptr %arrayinit.element, align 4
  %20 = ptrtoint ptr %arrayinit.element205 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayinit.element205, align 4
  %call206 = call i32 @irq_create_fwspec_mapping(ptr noundef nonnull %ppi_fwspec) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool208.not = icmp eq i32 %call206, 0
  br i1 %tobool208.not, label %do.end226, label %if.end242, !prof !229

do.end226:                                        ; preds = %for.body204
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1929, i32 noundef 9, ptr noundef null) #12
  br label %cleanup281

if.end242:                                        ; preds = %for.body204
  %21 = load ptr, ptr @gic_data, align 8
  %call243 = call ptr @partition_create_desc(ptr noundef %21, ptr noundef nonnull %call8.i.i362, i32 noundef %inc.i, i32 noundef %call206, ptr noundef nonnull @partition_domain_ops) #12
  %tobool245.not = icmp eq ptr %call243, null
  br i1 %tobool245.not, label %do.end263, label %if.end279, !prof !229

do.end263:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1933, i32 noundef 9, ptr noundef null) #12
  br label %cleanup281

if.end279:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #14
  %22 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 10), align 8
  %arrayidx280 = getelementptr ptr, ptr %22, i32 %i.1387
  %23 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call243, ptr %arrayidx280, align 4
  br label %cleanup281

cleanup281:                                       ; preds = %if.end279, %do.end263, %do.end226
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ppi_fwspec) #12
  %inc287 = add nuw i32 %i.1387, 1
  %24 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %cmp203 = icmp ult i32 %inc287, %24
  br i1 %cmp203, label %cleanup281.for.body204_crit_edge, label %cleanup281.out_put_node_crit_edge

cleanup281.out_put_node_crit_edge:                ; preds = %cleanup281
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put_node

cleanup281.for.body204_crit_edge:                 ; preds = %cleanup281
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body204

out_put_node:                                     ; preds = %cleanup281.out_put_node_crit_edge, %for.cond202.preheader.out_put_node_crit_edge, %do.end, %of_get_child_count.exit.out_put_node_crit_edge, %if.end4.out_put_node_crit_edge
  call void @of_node_put(ptr noundef nonnull %call) #12
  br label %cleanup289

cleanup289:                                       ; preds = %out_put_node, %if.end7.i.i.cleanup289_crit_edge, %kcalloc.exit.thread, %entry.cleanup289_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gic_of_setup_kvm_info(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %r = alloca %struct.resource, align 4
  %gicv_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #12
  %0 = call ptr @memset(ptr %r, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gicv_idx) #12
  %1 = ptrtoint ptr %gicv_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %gicv_idx, align 4, !annotation !227
  %call = tail call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #12
  store i32 %call, ptr getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v3_kvm_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.6, ptr noundef nonnull %gicv_idx, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool2.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %gicv_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %gicv_idx, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %3 = ptrtoint ptr %gicv_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gicv_idx, align 4
  %add = add i32 %4, 3
  store i32 %add, ptr %gicv_idx, align 4
  %call5 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef %add, ptr noundef nonnull %r) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %5 = call ptr @memcpy(ptr getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v3_kvm_info, i32 0, i32 1), ptr %r, i32 32)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %6 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 7), align 4, !range !232
  store i8 %6, ptr getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v3_kvm_info, i32 0, i32 5), align 4
  %7 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 8), align 1, !range !232
  store i8 %7, ptr getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v3_kvm_info, i32 0, i32 6), align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gicv_idx) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gic_enable_quirk_msm8996(ptr nocapture noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.gic_chip_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %or = or i64 %1, 1
  store i64 %or, ptr %flags, align 8
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gic_enable_quirk_hip06_07(ptr nocapture noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gicd_typer = getelementptr inbounds %struct.gic_chip_data, ptr %data, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %gicd_typer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gicd_typer, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and3 = and i32 %1, -769
  %2 = ptrtoint ptr %gicd_typer to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and3, ptr %gicd_typer, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %3 = xor i1 %tobool.not, true
  ret i1 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gic_enable_quirk_cavium_38539(ptr nocapture noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.gic_chip_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %or = or i64 %1, 2
  store i64 %or, ptr %flags, align 8
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_enable_quirks(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbi_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_handle_irq(ptr nocapture noundef readnone %regs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 0", "=r"() #12, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  %1 = and i32 %0, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1020, i32 %1)
  %2 = icmp eq i32 %1, 1020
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @supports_deactivate_key, i32 1), ptr blockaddress(@gic_handle_irq, %if.else)) #12
          to label %if.then36 [label %if.else], !srcloc !230

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 1", "r"(i32 %0) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  br label %if.end37

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then36
  %3 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %call38 = tail call i32 @generic_handle_domain_irq(ptr noundef %3, i32 noundef %0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %land.end

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.end:                                         ; preds = %if.end37
  %.b92 = load i1, ptr @gic_handle_irq.__already_done, align 1
  br i1 %.b92, label %land.end.if.end74_crit_edge, label %if.then51, !prof !233

land.end.if.end74_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then51:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gic_handle_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 732, i32 noundef 9, ptr noundef nonnull @.str.40) #12
  br label %if.end74

if.end74:                                         ; preds = %if.then51, %land.end.if.end74_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @supports_deactivate_key, i32 1), ptr blockaddress(@gic_handle_irq, %if.else.i)) #12
          to label %if.then.i [label %if.else.i], !srcloc !230

if.then.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %0)
  %cmp.i = icmp ult i32 %0, 8192
  br i1 %cmp.i, label %if.then4.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c11, 1", "r"(i32 %0) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  br label %cleanup

if.else.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 1", "r"(i32 %0) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then4.i, %if.then.i.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gic_dist_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 0) #12, !srcloc !241
  tail call void @gic_dist_wait_for_rwp()
  %1 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %2 = and i32 %1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1186230.not = icmp eq i32 %2, 0
  br i1 %cmp1186230.not, label %entry.for.cond5.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond5.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %0, i32 128
  br label %for.body

for.cond5.preheader:                              ; preds = %for.body.for.cond5.preheader_crit_edge, %entry.for.cond5.preheader_crit_edge
  %3 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and6188 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6188)
  %tobool.not189 = icmp eq i32 %and6188, 0
  br i1 %tobool.not189, label %for.cond5.preheader.for.cond25.preheader_crit_edge, label %for.body15.lr.ph

for.cond5.preheader.for.cond25.preheader_crit_edge: ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond25.preheader

for.body15.lr.ph:                                 ; preds = %for.cond5.preheader
  %add.ptr16 = getelementptr i8, ptr %0, i32 5120
  %add.ptr19 = getelementptr i8, ptr %0, i32 7168
  br label %for.body15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0187 = phi i32 [ 32, %for.body.lr.ph ], [ %add4, %for.body.for.body_crit_edge ]
  %div174 = lshr exact i32 %i.0187, 3
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 %div174
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -1) #12, !srcloc !241
  %add4 = add nuw nsw i32 %i.0187, 32
  %4 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and = shl i32 %4, 5
  %add = and i32 %and, 992
  call void @__sanitizer_cov_trace_const_cmp4(i32 988, i32 %add)
  %cmp = icmp ult i32 %add, 988
  %mul = add nuw nsw i32 %add, 32
  %cond = select i1 %cmp, i32 %mul, i32 1020
  %cmp1 = icmp ult i32 %add4, %cond
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.for.cond5.preheader_crit_edge

for.body.for.cond5.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond25.preheader:                             ; preds = %for.body15.for.cond25.preheader_crit_edge, %for.cond5.preheader.for.cond25.preheader_crit_edge
  %5 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and26195 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26195)
  %tobool27.not196 = icmp eq i32 %and26195, 0
  br i1 %tobool27.not196, label %for.cond25.preheader.for.cond44.preheader_crit_edge, label %for.body37.lr.ph

for.cond25.preheader.for.cond44.preheader_crit_edge: ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond44.preheader

for.body37.lr.ph:                                 ; preds = %for.cond25.preheader
  %add.ptr38 = getelementptr i8, ptr %0, i32 4096
  br label %for.body37

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.body15.lr.ph
  %i.1194 = phi i32 [ 0, %for.body15.lr.ph ], [ %add23, %for.body15.for.body15_crit_edge ]
  %div17173 = lshr exact i32 %i.1194, 3
  %add.ptr18 = getelementptr i8, ptr %add.ptr16, i32 %div17173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 -1) #12, !srcloc !241
  %add.ptr21 = getelementptr i8, ptr %add.ptr19, i32 %div17173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 -1) #12, !srcloc !241
  %add23 = add nuw nsw i32 %i.1194, 32
  %6 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and6 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %7 = lshr i32 %6, 22
  %add9 = and i32 %7, 992
  %mul10 = add nuw nsw i32 %add9, 32
  %cond13 = select i1 %tobool.not, i32 0, i32 %mul10
  %cmp14 = icmp ult i32 %add23, %cond13
  br i1 %cmp14, label %for.body15.for.body15_crit_edge, label %for.body15.for.cond25.preheader_crit_edge

for.body15.for.cond25.preheader_crit_edge:        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond25.preheader

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15

for.cond44.preheader:                             ; preds = %for.body37.for.cond44.preheader_crit_edge, %for.cond25.preheader.for.cond44.preheader_crit_edge
  %8 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and45202 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45202)
  %tobool46.not203 = icmp eq i32 %and45202, 0
  br i1 %tobool46.not203, label %for.cond44.preheader.for.cond63.preheader_crit_edge, label %for.body56.lr.ph

for.cond44.preheader.for.cond63.preheader_crit_edge: ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond63.preheader

for.body56.lr.ph:                                 ; preds = %for.cond44.preheader
  %add.ptr57 = getelementptr i8, ptr %0, i32 12288
  br label %for.body56

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.body37.lr.ph
  %i.2201 = phi i32 [ 0, %for.body37.lr.ph ], [ %add42, %for.body37.for.body37_crit_edge ]
  %div39172 = lshr exact i32 %i.2201, 3
  %add.ptr40 = getelementptr i8, ptr %add.ptr38, i32 %div39172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 -1) #12, !srcloc !241
  %add42 = add nuw nsw i32 %i.2201, 32
  %9 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and26 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %10 = lshr i32 %9, 22
  %add31 = and i32 %10, 992
  %mul32 = add nuw nsw i32 %add31, 32
  %cond35 = select i1 %tobool27.not, i32 0, i32 %mul32
  %cmp36 = icmp ult i32 %add42, %cond35
  br i1 %cmp36, label %for.body37.for.body37_crit_edge, label %for.body37.for.cond44.preheader_crit_edge

for.body37.for.cond44.preheader_crit_edge:        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond44.preheader

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body37

for.cond63.preheader:                             ; preds = %for.body56.for.cond63.preheader_crit_edge, %for.cond44.preheader.for.cond63.preheader_crit_edge
  %11 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and64209 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64209)
  %tobool65.not210 = icmp eq i32 %and64209, 0
  br i1 %tobool65.not210, label %for.cond63.preheader.for.end80_crit_edge, label %for.body75.lr.ph

for.cond63.preheader.for.end80_crit_edge:         ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end80

for.body75.lr.ph:                                 ; preds = %for.cond63.preheader
  %add.ptr76 = getelementptr i8, ptr %0, i32 8192
  br label %for.body75

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %for.body56.lr.ph
  %i.3208 = phi i32 [ 0, %for.body56.lr.ph ], [ %add61, %for.body56.for.body56_crit_edge ]
  %div58171 = lshr exact i32 %i.3208, 2
  %add.ptr59 = getelementptr i8, ptr %add.ptr57, i32 %div58171
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 0) #12, !srcloc !241
  %add61 = add nuw nsw i32 %i.3208, 16
  %12 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and45 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %13 = lshr i32 %12, 22
  %add50 = and i32 %13, 992
  %mul51 = add nuw nsw i32 %add50, 32
  %cond54 = select i1 %tobool46.not, i32 0, i32 %mul51
  %cmp55 = icmp ult i32 %add61, %cond54
  br i1 %cmp55, label %for.body56.for.body56_crit_edge, label %for.body56.for.cond63.preheader_crit_edge

for.body56.for.cond63.preheader_crit_edge:        ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond63.preheader

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body56

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %for.body75.lr.ph
  %i.4215 = phi i32 [ 0, %for.body75.lr.ph ], [ %add79, %for.body75.for.body75_crit_edge ]
  %add.ptr77 = getelementptr i8, ptr %add.ptr76, i32 %i.4215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 -1600085856) #12, !srcloc !241
  %add79 = add nuw nsw i32 %i.4215, 4
  %14 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and64 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %15 = lshr i32 %14, 22
  %add69 = and i32 %15, 992
  %mul70 = add nuw nsw i32 %add69, 32
  %cond73 = select i1 %tobool65.not, i32 0, i32 %mul70
  %cmp74 = icmp ult i32 %add79, %cond73
  br i1 %cmp74, label %for.body75.for.body75_crit_edge, label %for.body75.for.end80_crit_edge

for.body75.for.end80_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end80

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body75

for.end80:                                        ; preds = %for.body75.for.end80_crit_edge, %for.cond63.preheader.for.end80_crit_edge
  %.lcssa = phi i32 [ %11, %for.cond63.preheader.for.end80_crit_edge ], [ %14, %for.body75.for.end80_crit_edge ]
  %and81 = shl i32 %.lcssa, 5
  %add82 = and i32 %and81, 992
  call void @__sanitizer_cov_trace_const_cmp4(i32 988, i32 %add82)
  %cmp85 = icmp ult i32 %add82, 988
  %mul83 = add nuw nsw i32 %add82, 32
  %cond89 = select i1 %cmp85, i32 %mul83, i32 1020
  tail call void @gic_dist_config(ptr noundef %0, i32 noundef %cond89, ptr noundef nonnull @gic_dist_wait_for_rwp) #12
  %16 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 5), align 4
  %and90 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %for.end80.if.end_crit_edge, label %do.end

for.end80.if.end_crit_edge:                       ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end80.if.end_crit_edge
  %val.0 = phi i32 [ 275, %do.end ], [ 19, %for.end80.if.end_crit_edge ]
  %17 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %17) #12, !srcloc !241
  %18 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %or13.i234 = and i32 %23, 16777215
  %24 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %25 = and i32 %24, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp106221231.not = icmp eq i32 %25, 0
  br i1 %cmp106221231.not, label %if.end.for.cond113.preheader_crit_edge, label %for.body107.lr.ph

if.end.for.cond113.preheader_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond113.preheader

for.body107.lr.ph:                                ; preds = %if.end
  %add.ptr108 = getelementptr i8, ptr %0, i32 24576
  %26 = tail call i32 @llvm.bswap.i32(i32 %or13.i234) #12
  %27 = and i32 %23, -16777216
  br label %for.body107

for.cond113.preheader:                            ; preds = %for.body107.for.cond113.preheader_crit_edge, %if.end.for.cond113.preheader_crit_edge
  %28 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and114223 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114223)
  %tobool115.not224 = icmp eq i32 %and114223, 0
  br i1 %tobool115.not224, label %for.cond113.preheader.for.end131_crit_edge, label %for.body125.lr.ph

for.cond113.preheader.for.end131_crit_edge:       ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end131

for.body125.lr.ph:                                ; preds = %for.cond113.preheader
  %add.ptr126 = getelementptr i8, ptr %0, i32 32768
  %29 = tail call i32 @llvm.bswap.i32(i32 %or13.i234) #12
  %30 = and i32 %23, -16777216
  br label %for.body125

for.body107:                                      ; preds = %for.body107.for.body107_crit_edge, %for.body107.lr.ph
  %i.5222 = phi i32 [ 32, %for.body107.lr.ph ], [ %inc, %for.body107.for.body107_crit_edge ]
  %mul109 = shl i32 %i.5222, 3
  %add.ptr110 = getelementptr i8, ptr %add.ptr108, i32 %mul109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %26) #12, !srcloc !241
  %add.ptr.i = getelementptr i8, ptr %add.ptr110, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #12, !srcloc !241
  %inc = add nuw nsw i32 %i.5222, 1
  %31 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and97 = shl i32 %31, 5
  %add98 = and i32 %and97, 992
  call void @__sanitizer_cov_trace_const_cmp4(i32 988, i32 %add98)
  %cmp101 = icmp ult i32 %add98, 988
  %mul99 = add nuw nsw i32 %add98, 32
  %cond105 = select i1 %cmp101, i32 %mul99, i32 1020
  %cmp106 = icmp ult i32 %inc, %cond105
  br i1 %cmp106, label %for.body107.for.body107_crit_edge, label %for.body107.for.cond113.preheader_crit_edge

for.body107.for.cond113.preheader_crit_edge:      ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond113.preheader

for.body107.for.body107_crit_edge:                ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body107

for.body125:                                      ; preds = %for.body125.for.body125_crit_edge, %for.body125.lr.ph
  %i.6229 = phi i32 [ 0, %for.body125.lr.ph ], [ %inc130, %for.body125.for.body125_crit_edge ]
  %mul127 = shl i32 %i.6229, 3
  %add.ptr128 = getelementptr i8, ptr %add.ptr126, i32 %mul127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %29) #12, !srcloc !241
  %add.ptr.i180 = getelementptr i8, ptr %add.ptr128, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %30) #12, !srcloc !241
  %inc130 = add nuw nsw i32 %i.6229, 1
  %32 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and114 = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  %33 = lshr i32 %32, 22
  %add119 = and i32 %33, 992
  %mul120 = add nuw nsw i32 %add119, 32
  %cond123 = select i1 %tobool115.not, i32 0, i32 %mul120
  %cmp124 = icmp ult i32 %inc130, %cond123
  br i1 %cmp124, label %for.body125.for.body125_crit_edge, label %for.body125.for.end131_crit_edge

for.body125.for.end131_crit_edge:                 ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end131

for.body125.for.body125_crit_edge:                ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body125

for.end131:                                       ; preds = %for.body125.for.end131_crit_edge, %for.cond113.preheader.for.end131_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gic_cpu_init() unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @gic_iterate_rdists(ptr noundef nonnull @__gic_populate_rdist) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %gic_populate_rdist.exit

gic_populate_rdist.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 914, i32 noundef 9, ptr noundef nonnull @.str.57, i32 noundef %3, i32 noundef %5) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @gic_enable_redist(i1 noundef zeroext true)
  %6 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp = icmp ugt i32 %6, 16
  br i1 %cmp, label %if.end.land.rhs_crit_edge, label %lor.lhs.false

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 4), align 8
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.land.rhs_crit_edge

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %8 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 4", "=r"() #12, !srcloc !242
  %and5 = and i32 %8, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.end, label %land.rhs.if.end23_crit_edge, !prof !229

land.rhs.if.end23_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1128, i32 noundef 9, ptr noundef nonnull @.str.56, i32 noundef %12) #12
  br label %if.end23

if.end23:                                         ; preds = %do.end, %land.rhs.if.end23_crit_edge, %lor.lhs.false.if.end23_crit_edge
  %13 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i49 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i49 to ptr
  %cpu36 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu36, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %add37 = add i32 %20, %14
  %21 = inttoptr i32 %add37 to ptr
  %rd_base = getelementptr inbounds %struct.anon.71, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %rd_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rd_base, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 65536
  %24 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %24)
  %cmp3953.not = icmp eq i32 %24, -16
  br i1 %cmp3953.not, label %if.end23.for.end_crit_edge, label %for.body.lr.ph

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %add.ptr40 = getelementptr i8, ptr %23, i32 65664
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %add42, %for.body.for.body_crit_edge ]
  %div = sdiv i32 %i.054, 8
  %add.ptr41 = getelementptr i8, ptr %add.ptr40, i32 %div
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 -1) #12, !srcloc !241
  %add42 = add i32 %i.054, 32
  %25 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %add38 = add i32 %25, 16
  %cmp39 = icmp ult i32 %add42, %add38
  br i1 %cmp39, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end23.for.end_crit_edge
  %add38.lcssa = phi i32 [ 0, %if.end23.for.end_crit_edge ], [ %add38, %for.body.for.end_crit_edge ]
  tail call void @gic_cpu_config(ptr noundef %add.ptr, i32 noundef %add38.lcssa, ptr noundef nonnull @gic_redist_wait_for_rwp) #12
  tail call fastcc void @gic_cpu_sys_reg_init()
  br label %cleanup

cleanup:                                          ; preds = %for.end, %gic_populate_rdist.exit
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gic_smp_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %sgi_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %sgi_fwspec) #12
  %0 = getelementptr inbounds i8, ptr %sgi_fwspec, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 64)
  %2 = load ptr, ptr @gic_data, align 8
  %3 = ptrtoint ptr %sgi_fwspec to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %sgi_fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %sgi_fwspec, i32 0, i32 1
  %4 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %param_count, align 4
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 97, ptr noundef nonnull @.str.72, i1 noundef zeroext false, ptr noundef nonnull @gic_starting_cpu, ptr noundef null, i1 noundef zeroext false) #12
  %5 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %call1 = call i32 @__irq_domain_alloc_irqs(ptr noundef %5, i32 noundef -1, i32 noundef 8, i32 noundef -1, ptr noundef nonnull %sgi_fwspec, i1 noundef zeroext false, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %do.end, label %if.end22, !prof !229

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1244, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @set_smp_ipi_range(i32 noundef %call1, i32 noundef 8) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %sgi_fwspec) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @its_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @its_cpu_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @its_lpi_memreserve_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gicv2m_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_irq_domain_select(ptr noundef readonly %d, ptr nocapture noundef readonly %fwspec, i32 noundef %bus_token) #7 align 64 {
entry:
  %type = alloca i32, align 4
  %hwirq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwirq) #12
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hwirq, align 4, !annotation !227
  %1 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fwspec, align 4
  %fwnode1 = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 6
  %3 = ptrtoint ptr %fwnode1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fwnode1, align 4
  %cmp.not = icmp eq ptr %2, %4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %2, null
  %cmp.i.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.cleanup_crit_edge, label %is_of_node.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_of_node.exit:                                  ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %6, @of_fwnode_ops
  br i1 %cmp.i, label %if.end4, label %is_of_node.exit.cleanup_crit_edge

is_of_node.exit.cleanup_crit_edge:                ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %is_of_node.exit
  %call5 = call i32 @gic_irq_domain_translate(ptr noundef %d, ptr noundef %fwspec, ptr noundef nonnull %hwirq, ptr noundef nonnull %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end45, label %land.rhs

land.rhs:                                         ; preds = %if.end4
  %.b65 = load i1, ptr @gic_irq_domain_select.__already_done, align 1
  br i1 %.b65, label %land.rhs.cleanup_crit_edge, label %if.then13, !prof !233

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gic_irq_domain_select.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1549, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end45:                                         ; preds = %if.end4
  %7 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq, align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 10), align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end45.if.then47_crit_edge, label %if.end.i

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.end.i:                                         ; preds = %if.end45
  %10 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fwspec, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  %cmp.i.i.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.end.i.if.then47_crit_edge, label %is_of_node.exit.i

if.end.i.if.then47_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

is_of_node.exit.i:                                ; preds = %if.end.i
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i67 = icmp eq ptr %13, @of_fwnode_ops
  br i1 %cmp.i.i67, label %if.end2.i, label %is_of_node.exit.i.if.then47_crit_edge

is_of_node.exit.i.if.then47_crit_edge:            ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.end2.i:                                        ; preds = %is_of_node.exit.i
  %param_count.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %14 = ptrtoint ptr %param_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %param_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.i68 = icmp slt i32 %15, 4
  br i1 %cmp.i68, label %if.end2.i.if.then47_crit_edge, label %lor.lhs.false.i

if.end2.i.if.then47_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

lor.lhs.false.i:                                  ; preds = %if.end2.i
  %arrayidx.i = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.then47_crit_edge, label %fwspec_is_partitioned_ppi.exit

lor.lhs.false.i.if.then47_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

fwspec_is_partitioned_ppi.exit:                   ; preds = %lor.lhs.false.i
  %call6.i = tail call fastcc i32 @__get_intid_range(i32 noundef %8) #12
  %18 = add i32 %call6.i, -1
  %switch.and.i = and i32 %18, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.end49, label %fwspec_is_partitioned_ppi.exit.if.then47_crit_edge

fwspec_is_partitioned_ppi.exit.if.then47_crit_edge: ; preds = %fwspec_is_partitioned_ppi.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.then47:                                        ; preds = %fwspec_is_partitioned_ppi.exit.if.then47_crit_edge, %lor.lhs.false.i.if.then47_crit_edge, %if.end2.i.if.then47_crit_edge, %is_of_node.exit.i.if.then47_crit_edge, %if.end.i.if.then47_crit_edge, %if.end45.if.then47_crit_edge
  %19 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 4), align 8
  %cmp48 = icmp eq ptr %19, %d
  br label %cleanup

if.end49:                                         ; preds = %fwspec_is_partitioned_ppi.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %switch.i = icmp eq i32 %call6.i, 1
  %retval.0.v.i = select i1 %switch.i, i32 -16, i32 -1040
  %retval.0.i69 = add i32 %retval.0.v.i, %8
  %arrayidx = getelementptr ptr, ptr %9, i32 %retval.0.i69
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call51 = tail call ptr @partition_get_domain(ptr noundef %21) #12
  %cmp52 = icmp eq ptr %call51, %d
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then47, %if.then13, %land.rhs.cleanup_crit_edge, %is_of_node.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.shrunk = phi i1 [ %cmp52, %if.end49 ], [ %cmp48, %if.then47 ], [ false, %entry.cleanup_crit_edge ], [ true, %is_of_node.exit.cleanup_crit_edge ], [ false, %if.then13 ], [ false, %land.rhs.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwirq) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %arg) #7 align 64 {
entry:
  %hwirq = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwirq) #12
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hwirq, align 4, !annotation !227
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #12
  %call = call i32 @gic_irq_domain_translate(ptr noundef %domain, ptr noundef %arg, ptr noundef nonnull %hwirq, ptr noundef nonnull %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp17.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp17.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwirq, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %add = add i32 %i.018, %virq
  %add1 = add i32 %2, %i.018
  %call2 = tail call fastcc i32 @gic_irq_domain_map(ptr noundef %domain, i32 noundef %add, i32 noundef %add1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call2, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwirq) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_irq_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp6.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add = add i32 %i.07, %virq
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %add) #12
  tail call void @__irq_set_handler(i32 noundef %add, ptr noundef null, i32 noundef 0, ptr noundef null) #12
  tail call void @irq_domain_reset_irq_data(ptr noundef %call) #12
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_irq_domain_translate(ptr nocapture noundef readnone %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %0 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp1 = icmp ult i32 %3, 16
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %hwirq, align 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fwspec, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  %cmp.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.if.end64_crit_edge, label %is_of_node.exit

if.end.if.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

is_of_node.exit:                                  ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %9, @of_fwnode_ops
  br i1 %cmp.i, label %if.then4, label %is_of_node.exit.if.end64_crit_edge

is_of_node.exit.if.end64_crit_edge:               ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then4:                                         ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp6 = icmp slt i32 %1, 3
  br i1 %cmp6, label %if.then4.return_crit_edge, label %if.end8

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end8:                                          ; preds = %if.then4
  %param9 = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %10 = ptrtoint ptr %param9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %param9, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end8.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb17
    i32 3, label %sw.bb21
    i32 -1592735507, label %sw.bb25
    i32 -1592735506, label %sw.bb28
  ]

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx12 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %14, 32
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx15 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %16, 16
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx19 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx19, align 4
  %add20 = add i32 %18, 4096
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx23 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %20, 1056
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx27 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx27, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end8
  %arrayidx30 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx30, align 4
  %25 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %hwirq, align 4
  %26 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %26)
  %cmp33 = icmp ugt i32 %26, 15
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #14
  %add35 = add i32 %24, 1040
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #14
  %add36 = add i32 %24, 16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then34, %sw.bb25, %sw.bb21, %sw.bb17, %sw.bb13, %sw.bb
  %add35.sink = phi i32 [ %add35, %if.then34 ], [ %add36, %if.else ], [ %22, %sw.bb25 ], [ %add24, %sw.bb21 ], [ %add20, %sw.bb17 ], [ %add16, %sw.bb13 ], [ %add, %sw.bb ]
  %27 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add35.sink, ptr %hwirq, align 4
  %arrayidx39 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx39, align 4
  %and = and i32 %29, 15
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp40 = icmp eq i32 %and, 0
  br i1 %cmp40, label %land.rhs, label %sw.epilog.return_crit_edge

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.rhs:                                         ; preds = %sw.epilog
  %31 = ptrtoint ptr %param9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %param9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1592735506, i32 %32)
  %cmp43.not = icmp eq i32 %32, -1592735506
  br i1 %cmp43.not, label %land.rhs.return_crit_edge, label %do.end, !prof !233

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1461, i32 noundef 9, ptr noundef null) #12
  br label %return

if.end64:                                         ; preds = %is_of_node.exit.if.end64_crit_edge, %if.end.if.end64_crit_edge
  br i1 %tobool.not.i.i, label %if.end64.return_crit_edge, label %is_fwnode_irqchip.exit

if.end64.return_crit_edge:                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

is_fwnode_irqchip.exit:                           ; preds = %if.end64
  %ops.i141 = getelementptr inbounds %struct.fwnode_handle, ptr %7, i32 0, i32 1
  %33 = ptrtoint ptr %ops.i141 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i141, align 4
  %cmp.i142 = icmp eq ptr %34, @irqchip_fwnode_ops
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp69.not = icmp eq i32 %1, 2
  %or.cond = select i1 %cmp.i142, i1 %cmp69.not, i1 false
  br i1 %or.cond, label %if.end71, label %is_fwnode_irqchip.exit.return_crit_edge

is_fwnode_irqchip.exit.return_crit_edge:          ; preds = %is_fwnode_irqchip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end71:                                         ; preds = %is_fwnode_irqchip.exit
  %param72 = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %35 = ptrtoint ptr %param72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %param72, align 4
  %37 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %hwirq, align 4
  %arrayidx75 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx75, align 4
  %40 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp77 = icmp eq i32 %39, 0
  br i1 %cmp77, label %do.end93, label %if.end71.return_crit_edge, !prof !229

if.end71.return_crit_edge:                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end93:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1472, i32 noundef 9, ptr noundef null) #12
  br label %return

return:                                           ; preds = %do.end93, %if.end71.return_crit_edge, %is_fwnode_irqchip.exit.return_crit_edge, %if.end64.return_crit_edge, %do.end, %land.rhs.return_crit_edge, %sw.epilog.return_crit_edge, %if.end8.return_crit_edge, %if.then4.return_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.then4.return_crit_edge ], [ -22, %if.end8.return_crit_edge ], [ 0, %sw.epilog.return_crit_edge ], [ 0, %do.end ], [ 0, %land.rhs.return_crit_edge ], [ 0, %do.end93 ], [ 0, %if.end71.return_crit_edge ], [ -22, %is_fwnode_irqchip.exit.return_crit_edge ], [ -22, %if.end64.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @partition_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @__get_intid_range(i32 noundef %hwirq) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %hwirq to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %hwirq, label %sw.caserange8 [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge10
    i32 2, label %entry.return_crit_edge11
    i32 3, label %entry.return_crit_edge12
    i32 4, label %entry.return_crit_edge13
    i32 5, label %entry.return_crit_edge14
    i32 6, label %entry.return_crit_edge15
    i32 7, label %entry.return_crit_edge16
    i32 8, label %entry.return_crit_edge17
    i32 9, label %entry.return_crit_edge18
    i32 10, label %entry.return_crit_edge19
    i32 11, label %entry.return_crit_edge20
    i32 12, label %entry.return_crit_edge21
    i32 13, label %entry.return_crit_edge22
    i32 14, label %entry.return_crit_edge23
    i32 15, label %entry.return_crit_edge24
    i32 16, label %entry.sw.bb1_crit_edge
    i32 17, label %entry.sw.bb1_crit_edge25
    i32 18, label %entry.sw.bb1_crit_edge26
    i32 19, label %entry.sw.bb1_crit_edge27
    i32 20, label %entry.sw.bb1_crit_edge28
    i32 21, label %entry.sw.bb1_crit_edge29
    i32 22, label %entry.sw.bb1_crit_edge30
    i32 23, label %entry.sw.bb1_crit_edge31
    i32 24, label %entry.sw.bb1_crit_edge32
    i32 25, label %entry.sw.bb1_crit_edge33
    i32 26, label %entry.sw.bb1_crit_edge34
    i32 27, label %entry.sw.bb1_crit_edge35
    i32 28, label %entry.sw.bb1_crit_edge36
    i32 29, label %entry.sw.bb1_crit_edge37
    i32 30, label %entry.sw.bb1_crit_edge38
    i32 31, label %entry.sw.bb1_crit_edge39
    i32 1056, label %entry.sw.bb3_crit_edge
    i32 1057, label %entry.sw.bb3_crit_edge40
    i32 1058, label %entry.sw.bb3_crit_edge41
    i32 1059, label %entry.sw.bb3_crit_edge42
    i32 1060, label %entry.sw.bb3_crit_edge43
    i32 1061, label %entry.sw.bb3_crit_edge44
    i32 1062, label %entry.sw.bb3_crit_edge45
    i32 1063, label %entry.sw.bb3_crit_edge46
    i32 1064, label %entry.sw.bb3_crit_edge47
    i32 1065, label %entry.sw.bb3_crit_edge48
    i32 1066, label %entry.sw.bb3_crit_edge49
    i32 1067, label %entry.sw.bb3_crit_edge50
    i32 1068, label %entry.sw.bb3_crit_edge51
    i32 1069, label %entry.sw.bb3_crit_edge52
    i32 1070, label %entry.sw.bb3_crit_edge53
    i32 1071, label %entry.sw.bb3_crit_edge54
    i32 1072, label %entry.sw.bb3_crit_edge55
    i32 1073, label %entry.sw.bb3_crit_edge56
    i32 1074, label %entry.sw.bb3_crit_edge57
    i32 1075, label %entry.sw.bb3_crit_edge58
    i32 1076, label %entry.sw.bb3_crit_edge59
    i32 1077, label %entry.sw.bb3_crit_edge60
    i32 1078, label %entry.sw.bb3_crit_edge61
    i32 1079, label %entry.sw.bb3_crit_edge62
    i32 1080, label %entry.sw.bb3_crit_edge63
    i32 1081, label %entry.sw.bb3_crit_edge64
    i32 1082, label %entry.sw.bb3_crit_edge65
    i32 1083, label %entry.sw.bb3_crit_edge66
    i32 1084, label %entry.sw.bb3_crit_edge67
    i32 1085, label %entry.sw.bb3_crit_edge68
    i32 1086, label %entry.sw.bb3_crit_edge69
    i32 1087, label %entry.sw.bb3_crit_edge70
    i32 1088, label %entry.sw.bb3_crit_edge71
    i32 1089, label %entry.sw.bb3_crit_edge72
    i32 1090, label %entry.sw.bb3_crit_edge73
    i32 1091, label %entry.sw.bb3_crit_edge74
    i32 1092, label %entry.sw.bb3_crit_edge75
    i32 1093, label %entry.sw.bb3_crit_edge76
    i32 1094, label %entry.sw.bb3_crit_edge77
    i32 1095, label %entry.sw.bb3_crit_edge78
    i32 1096, label %entry.sw.bb3_crit_edge79
    i32 1097, label %entry.sw.bb3_crit_edge80
    i32 1098, label %entry.sw.bb3_crit_edge81
    i32 1099, label %entry.sw.bb3_crit_edge82
    i32 1100, label %entry.sw.bb3_crit_edge83
    i32 1101, label %entry.sw.bb3_crit_edge84
    i32 1102, label %entry.sw.bb3_crit_edge85
    i32 1103, label %entry.sw.bb3_crit_edge86
    i32 1104, label %entry.sw.bb3_crit_edge87
    i32 1105, label %entry.sw.bb3_crit_edge88
    i32 1106, label %entry.sw.bb3_crit_edge89
    i32 1107, label %entry.sw.bb3_crit_edge90
    i32 1108, label %entry.sw.bb3_crit_edge91
    i32 1109, label %entry.sw.bb3_crit_edge92
    i32 1110, label %entry.sw.bb3_crit_edge93
    i32 1111, label %entry.sw.bb3_crit_edge94
    i32 1112, label %entry.sw.bb3_crit_edge95
    i32 1113, label %entry.sw.bb3_crit_edge96
    i32 1114, label %entry.sw.bb3_crit_edge97
    i32 1115, label %entry.sw.bb3_crit_edge98
    i32 1116, label %entry.sw.bb3_crit_edge99
    i32 1117, label %entry.sw.bb3_crit_edge100
    i32 1118, label %entry.sw.bb3_crit_edge101
    i32 1119, label %entry.sw.bb3_crit_edge102
  ]

entry.sw.bb3_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

entry.sw.bb1_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge25, %entry.sw.bb1_crit_edge26, %entry.sw.bb1_crit_edge27, %entry.sw.bb1_crit_edge28, %entry.sw.bb1_crit_edge29, %entry.sw.bb1_crit_edge30, %entry.sw.bb1_crit_edge31, %entry.sw.bb1_crit_edge32, %entry.sw.bb1_crit_edge33, %entry.sw.bb1_crit_edge34, %entry.sw.bb1_crit_edge35, %entry.sw.bb1_crit_edge36, %entry.sw.bb1_crit_edge37, %entry.sw.bb1_crit_edge38, %entry.sw.bb1_crit_edge39
  br label %return

sw.caserange:                                     ; preds = %sw.caserange5
  call void @__sanitizer_cov_trace_pc() #14
  %1 = add i32 %hwirq, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 988, i32 %1)
  %inbounds = icmp ult i32 %1, 988
  %spec.select = select i1 %inbounds, i32 2, i32 6
  br label %return

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge40, %entry.sw.bb3_crit_edge41, %entry.sw.bb3_crit_edge42, %entry.sw.bb3_crit_edge43, %entry.sw.bb3_crit_edge44, %entry.sw.bb3_crit_edge45, %entry.sw.bb3_crit_edge46, %entry.sw.bb3_crit_edge47, %entry.sw.bb3_crit_edge48, %entry.sw.bb3_crit_edge49, %entry.sw.bb3_crit_edge50, %entry.sw.bb3_crit_edge51, %entry.sw.bb3_crit_edge52, %entry.sw.bb3_crit_edge53, %entry.sw.bb3_crit_edge54, %entry.sw.bb3_crit_edge55, %entry.sw.bb3_crit_edge56, %entry.sw.bb3_crit_edge57, %entry.sw.bb3_crit_edge58, %entry.sw.bb3_crit_edge59, %entry.sw.bb3_crit_edge60, %entry.sw.bb3_crit_edge61, %entry.sw.bb3_crit_edge62, %entry.sw.bb3_crit_edge63, %entry.sw.bb3_crit_edge64, %entry.sw.bb3_crit_edge65, %entry.sw.bb3_crit_edge66, %entry.sw.bb3_crit_edge67, %entry.sw.bb3_crit_edge68, %entry.sw.bb3_crit_edge69, %entry.sw.bb3_crit_edge70, %entry.sw.bb3_crit_edge71, %entry.sw.bb3_crit_edge72, %entry.sw.bb3_crit_edge73, %entry.sw.bb3_crit_edge74, %entry.sw.bb3_crit_edge75, %entry.sw.bb3_crit_edge76, %entry.sw.bb3_crit_edge77, %entry.sw.bb3_crit_edge78, %entry.sw.bb3_crit_edge79, %entry.sw.bb3_crit_edge80, %entry.sw.bb3_crit_edge81, %entry.sw.bb3_crit_edge82, %entry.sw.bb3_crit_edge83, %entry.sw.bb3_crit_edge84, %entry.sw.bb3_crit_edge85, %entry.sw.bb3_crit_edge86, %entry.sw.bb3_crit_edge87, %entry.sw.bb3_crit_edge88, %entry.sw.bb3_crit_edge89, %entry.sw.bb3_crit_edge90, %entry.sw.bb3_crit_edge91, %entry.sw.bb3_crit_edge92, %entry.sw.bb3_crit_edge93, %entry.sw.bb3_crit_edge94, %entry.sw.bb3_crit_edge95, %entry.sw.bb3_crit_edge96, %entry.sw.bb3_crit_edge97, %entry.sw.bb3_crit_edge98, %entry.sw.bb3_crit_edge99, %entry.sw.bb3_crit_edge100, %entry.sw.bb3_crit_edge101, %entry.sw.bb3_crit_edge102
  br label %return

sw.caserange5:                                    ; preds = %sw.caserange8
  %2 = and i32 %hwirq, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %2)
  %inbounds6 = icmp eq i32 %2, 4096
  br i1 %inbounds6, label %sw.caserange5.return_crit_edge, label %sw.caserange

sw.caserange5.return_crit_edge:                   ; preds = %sw.caserange5
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.caserange8:                                    ; preds = %entry
  %3 = add i32 %hwirq, -8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 16769024, i32 %3)
  %inbounds9 = icmp ult i32 %3, 16769024
  br i1 %inbounds9, label %sw.caserange8.return_crit_edge, label %sw.caserange5

sw.caserange8.return_crit_edge:                   ; preds = %sw.caserange8
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

return:                                           ; preds = %sw.caserange8.return_crit_edge, %sw.caserange5.return_crit_edge, %sw.bb3, %sw.caserange, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24
  %retval.0 = phi i32 [ 3, %sw.bb3 ], [ 1, %sw.bb1 ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge10 ], [ 0, %entry.return_crit_edge11 ], [ 0, %entry.return_crit_edge12 ], [ 0, %entry.return_crit_edge13 ], [ 0, %entry.return_crit_edge14 ], [ 0, %entry.return_crit_edge15 ], [ 0, %entry.return_crit_edge16 ], [ 0, %entry.return_crit_edge17 ], [ 0, %entry.return_crit_edge18 ], [ 0, %entry.return_crit_edge19 ], [ 0, %entry.return_crit_edge20 ], [ 0, %entry.return_crit_edge21 ], [ 0, %entry.return_crit_edge22 ], [ 0, %entry.return_crit_edge23 ], [ 0, %entry.return_crit_edge24 ], [ 4, %sw.caserange5.return_crit_edge ], [ 5, %sw.caserange8.return_crit_edge ], [ %spec.select, %sw.caserange ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gic_irq_domain_map(ptr noundef %d, i32 noundef %irq, i32 noundef %hw) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @supports_deactivate_key, i32 1), ptr blockaddress(@gic_irq_domain_map, %0)) #12
          to label %arch_static_branch.exit [label %0], !srcloc !230

0:                                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %0, %entry
  %1 = phi ptr [ @gic_chip, %0 ], [ @gic_eoimode1_chip, %entry ]
  %call6 = tail call fastcc i32 @__get_intid_range(i32 noundef %hw)
  %2 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call6, label %arch_static_branch.exit.cleanup_crit_edge [
    i32 0, label %arch_static_branch.exit.sw.bb_crit_edge
    i32 1, label %arch_static_branch.exit.sw.bb_crit_edge37
    i32 3, label %arch_static_branch.exit.sw.bb_crit_edge38
    i32 2, label %arch_static_branch.exit.sw.bb8_crit_edge
    i32 4, label %arch_static_branch.exit.sw.bb8_crit_edge39
    i32 5, label %sw.bb10
  ]

arch_static_branch.exit.sw.bb8_crit_edge39:       ; preds = %arch_static_branch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

arch_static_branch.exit.sw.bb8_crit_edge:         ; preds = %arch_static_branch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

arch_static_branch.exit.sw.bb_crit_edge38:        ; preds = %arch_static_branch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

arch_static_branch.exit.sw.bb_crit_edge37:        ; preds = %arch_static_branch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

arch_static_branch.exit.sw.bb_crit_edge:          ; preds = %arch_static_branch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

arch_static_branch.exit.cleanup_crit_edge:        ; preds = %arch_static_branch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %arch_static_branch.exit.sw.bb_crit_edge, %arch_static_branch.exit.sw.bb_crit_edge37, %arch_static_branch.exit.sw.bb_crit_edge38
  %call7 = tail call i32 @irq_set_percpu_devid(i32 noundef %irq) #12
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %3 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %d, i32 noundef %irq, i32 noundef %hw, ptr noundef nonnull %1, ptr noundef %4, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null, ptr noundef null) #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %arch_static_branch.exit.sw.bb8_crit_edge, %arch_static_branch.exit.sw.bb8_crit_edge39
  %host_data9 = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %5 = ptrtoint ptr %host_data9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host_data9, align 4
  tail call void @irq_domain_set_info(ptr noundef %d, i32 noundef %irq, i32 noundef %hw, ptr noundef nonnull %1, ptr noundef %6, ptr noundef nonnull @handle_fasteoi_irq, ptr noundef null, ptr noundef null) #12
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 1024, i32 noundef 0) #12
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %or.i = or i32 %10, 16777216
  store i32 %or.i, ptr %8, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %arch_static_branch.exit
  %11 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !228
  %13 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %sw.bb10.cleanup_crit_edge, label %gic_dist_supports_lpis.exit

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

gic_dist_supports_lpis.exit:                      ; preds = %sw.bb10
  %14 = load i8, ptr @gicv3_nolpi, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %tobool12.not = icmp eq i8 %14, 1
  br i1 %tobool12.not, label %gic_dist_supports_lpis.exit.cleanup_crit_edge, label %if.end14

gic_dist_supports_lpis.exit.cleanup_crit_edge:    ; preds = %gic_dist_supports_lpis.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %gic_dist_supports_lpis.exit
  call void @__sanitizer_cov_trace_pc() #14
  %host_data15 = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %15 = ptrtoint ptr %host_data15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host_data15, align 4
  tail call void @irq_domain_set_info(ptr noundef %d, i32 noundef %irq, i32 noundef %hw, ptr noundef nonnull %1, ptr noundef %16, ptr noundef nonnull @handle_fasteoi_irq, ptr noundef null, ptr noundef null) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end14, %sw.bb8, %sw.bb
  %common.i33 = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %common.i33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %common.i33, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %or.i34 = or i32 %20, 268435456
  store i32 %or.i34, ptr %18, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %gic_dist_supports_lpis.exit.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %arch_static_branch.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %gic_dist_supports_lpis.exit.cleanup_crit_edge ], [ -1, %arch_static_branch.exit.cleanup_crit_edge ], [ -1, %sw.bb10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_percpu_devid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_percpu_devid_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_mask_irq(ptr nocapture noundef readonly %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i, align 4
  %call.i.i = tail call fastcc i32 @__get_intid_range(i32 noundef %1) #12
  %2 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %call.i.i, label %do.end.i [
    i32 0, label %entry.convert_offset_index.exit_crit_edge
    i32 1, label %entry.convert_offset_index.exit_crit_edge2
    i32 2, label %entry.convert_offset_index.exit_crit_edge3
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb3.i
  ]

entry.convert_offset_index.exit_crit_edge3:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

entry.convert_offset_index.exit_crit_edge2:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

entry.convert_offset_index.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.i1 = add i32 %1, -1024
  br label %convert_offset_index.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub5.i = add i32 %1, -4096
  br label %convert_offset_index.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 332, i32 noundef 9, ptr noundef null) #12
  %3 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq.i.i, align 4
  br label %convert_offset_index.exit

convert_offset_index.exit:                        ; preds = %do.end.i, %sw.bb3.i, %sw.bb1.i, %entry.convert_offset_index.exit_crit_edge, %entry.convert_offset_index.exit_crit_edge2, %entry.convert_offset_index.exit_crit_edge3
  %index.i.0 = phi i32 [ %4, %do.end.i ], [ %sub5.i, %sw.bb3.i ], [ %add.i1, %sw.bb1.i ], [ %1, %entry.convert_offset_index.exit_crit_edge ], [ %1, %entry.convert_offset_index.exit_crit_edge2 ], [ %1, %entry.convert_offset_index.exit_crit_edge3 ]
  %retval.0.i = phi i32 [ 384, %do.end.i ], [ 5120, %sw.bb3.i ], [ 384, %sw.bb1.i ], [ 384, %entry.convert_offset_index.exit_crit_edge ], [ 384, %entry.convert_offset_index.exit_crit_edge2 ], [ 384, %entry.convert_offset_index.exit_crit_edge3 ]
  %5 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwirq.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @__get_intid_range(i32 noundef %6) #12
  %7 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %call.i.i.i, label %if.else.i [
    i32 0, label %convert_offset_index.exit.do.body.i_crit_edge
    i32 1, label %convert_offset_index.exit.do.body.i_crit_edge4
    i32 3, label %convert_offset_index.exit.do.body.i_crit_edge5
  ]

convert_offset_index.exit.do.body.i_crit_edge5:   ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

convert_offset_index.exit.do.body.i_crit_edge4:   ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

convert_offset_index.exit.do.body.i_crit_edge:    ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %convert_offset_index.exit.do.body.i_crit_edge, %convert_offset_index.exit.do.body.i_crit_edge4, %convert_offset_index.exit.do.body.i_crit_edge5
  %8 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %rd_base.i = getelementptr inbounds %struct.anon.71, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %rd_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 65536
  br label %gic_poke_irq.exit

if.else.i:                                        ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %19 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %gic_poke_irq.exit

gic_poke_irq.exit:                                ; preds = %if.else.i, %do.body.i
  %base.0.i = phi ptr [ %add.ptr.i, %do.body.i ], [ %19, %if.else.i ]
  %rwp_wait.0.i = phi ptr [ @gic_redist_wait_for_rwp, %do.body.i ], [ @gic_dist_wait_for_rwp, %if.else.i ]
  %rem.i = and i32 %index.i.0, 31
  %shl.i = shl nuw i32 1, %rem.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #12
  %add.ptr4.i = getelementptr i8, ptr %base.0.i, i32 %retval.0.i
  %21 = lshr i32 %index.i.0, 3
  %mul.i = and i32 %21, 536870908
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %20) #12, !srcloc !241
  tail call void %rwp_wait.0.i() #12, !callees !243
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_unmask_irq(ptr nocapture noundef readonly %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i, align 4
  %call.i.i = tail call fastcc i32 @__get_intid_range(i32 noundef %1) #12
  %2 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %call.i.i, label %do.end.i [
    i32 0, label %entry.convert_offset_index.exit_crit_edge
    i32 1, label %entry.convert_offset_index.exit_crit_edge2
    i32 2, label %entry.convert_offset_index.exit_crit_edge3
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb3.i
  ]

entry.convert_offset_index.exit_crit_edge3:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

entry.convert_offset_index.exit_crit_edge2:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

entry.convert_offset_index.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.i1 = add i32 %1, -1024
  br label %convert_offset_index.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub5.i = add i32 %1, -4096
  br label %convert_offset_index.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 332, i32 noundef 9, ptr noundef null) #12
  %3 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq.i.i, align 4
  br label %convert_offset_index.exit

convert_offset_index.exit:                        ; preds = %do.end.i, %sw.bb3.i, %sw.bb1.i, %entry.convert_offset_index.exit_crit_edge, %entry.convert_offset_index.exit_crit_edge2, %entry.convert_offset_index.exit_crit_edge3
  %index.i.0 = phi i32 [ %4, %do.end.i ], [ %sub5.i, %sw.bb3.i ], [ %add.i1, %sw.bb1.i ], [ %1, %entry.convert_offset_index.exit_crit_edge ], [ %1, %entry.convert_offset_index.exit_crit_edge2 ], [ %1, %entry.convert_offset_index.exit_crit_edge3 ]
  %retval.0.i = phi i32 [ 256, %do.end.i ], [ 4608, %sw.bb3.i ], [ 256, %sw.bb1.i ], [ 256, %entry.convert_offset_index.exit_crit_edge ], [ 256, %entry.convert_offset_index.exit_crit_edge2 ], [ 256, %entry.convert_offset_index.exit_crit_edge3 ]
  %5 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwirq.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @__get_intid_range(i32 noundef %6) #12
  %7 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call.i.i.i, label %if.else.i [
    i32 0, label %convert_offset_index.exit.do.body.i_crit_edge
    i32 1, label %convert_offset_index.exit.do.body.i_crit_edge4
    i32 3, label %convert_offset_index.exit.do.body.i_crit_edge5
  ]

convert_offset_index.exit.do.body.i_crit_edge5:   ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

convert_offset_index.exit.do.body.i_crit_edge4:   ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

convert_offset_index.exit.do.body.i_crit_edge:    ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %convert_offset_index.exit.do.body.i_crit_edge, %convert_offset_index.exit.do.body.i_crit_edge4, %convert_offset_index.exit.do.body.i_crit_edge5
  %8 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %rd_base.i = getelementptr inbounds %struct.anon.71, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %rd_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 65536
  br label %gic_poke_irq.exit

if.else.i:                                        ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %19 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %gic_poke_irq.exit

gic_poke_irq.exit:                                ; preds = %if.else.i, %do.body.i
  %base.0.i = phi ptr [ %add.ptr.i, %do.body.i ], [ %19, %if.else.i ]
  %rwp_wait.0.i = phi ptr [ @gic_redist_wait_for_rwp, %do.body.i ], [ @gic_dist_wait_for_rwp, %if.else.i ]
  %rem.i = and i32 %index.i.0, 31
  %shl.i = shl nuw i32 1, %rem.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #12
  %add.ptr4.i = getelementptr i8, ptr %base.0.i, i32 %retval.0.i
  %21 = lshr i32 %index.i.0, 3
  %mul.i = and i32 %21, 536870908
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %20) #12, !srcloc !241
  tail call void %rwp_wait.0.i() #12, !callees !243
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_eoi_irq(ptr nocapture noundef readonly %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 1", "r"(i32 %1) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_set_affinity(ptr nocapture noundef readonly %d, ptr noundef %mask_val, i1 noundef zeroext %force) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %force, label %if.then, label %if.end.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %mask_val, i32 noundef %0) #12
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = tail call i32 @_find_first_and_bit(ptr noundef %mask_val, ptr noundef nonnull @__cpu_online_mask, i32 noundef %0) #12
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then
  %cpu.0 = phi i32 [ %call.i, %if.then ], [ %call6.i.i, %if.end.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cpu.0, i32 %1)
  %cmp.not = icmp ult i32 %cpu.0, %1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i.i, align 4
  %call.i.i = tail call fastcc i32 @__get_intid_range(i32 noundef %3) #12
  %4 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call.i.i, label %do.end.i114 [
    i32 0, label %if.end3.cleanup_crit_edge
    i32 1, label %if.end3.cleanup_crit_edge123
    i32 3, label %if.end3.cleanup_crit_edge124
    i32 4, label %sw.bb3.i113
    i32 2, label %if.end3.convert_offset_index.exit116_crit_edge
  ]

if.end3.convert_offset_index.exit116_crit_edge:   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit116

if.end3.cleanup_crit_edge124:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.cleanup_crit_edge123:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb3.i113:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %sub5.i112 = add i32 %3, -4096
  br label %convert_offset_index.exit116

do.end.i114:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 332, i32 noundef 9, ptr noundef null) #12
  %5 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwirq.i.i, align 4
  br label %convert_offset_index.exit116

convert_offset_index.exit116:                     ; preds = %do.end.i114, %sw.bb3.i113, %if.end3.convert_offset_index.exit116_crit_edge
  %index.i.0 = phi i32 [ %6, %do.end.i114 ], [ %sub5.i112, %sw.bb3.i113 ], [ %3, %if.end3.convert_offset_index.exit116_crit_edge ]
  %retval.0.i115 = phi i32 [ 256, %do.end.i114 ], [ 4608, %sw.bb3.i113 ], [ 256, %if.end3.convert_offset_index.exit116_crit_edge ]
  %7 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @__get_intid_range(i32 noundef %8) #12
  %9 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %call.i.i.i, label %if.else.i [
    i32 0, label %convert_offset_index.exit116.do.body.i_crit_edge
    i32 1, label %convert_offset_index.exit116.do.body.i_crit_edge125
    i32 3, label %convert_offset_index.exit116.do.body.i_crit_edge126
  ]

convert_offset_index.exit116.do.body.i_crit_edge126: ; preds = %convert_offset_index.exit116
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

convert_offset_index.exit116.do.body.i_crit_edge125: ; preds = %convert_offset_index.exit116
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

convert_offset_index.exit116.do.body.i_crit_edge: ; preds = %convert_offset_index.exit116
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %convert_offset_index.exit116.do.body.i_crit_edge, %convert_offset_index.exit116.do.body.i_crit_edge125, %convert_offset_index.exit116.do.body.i_crit_edge126
  %10 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i.i43 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i43 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i to ptr
  %rd_base.i = getelementptr inbounds %struct.anon.71, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %rd_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 65536
  br label %gic_peek_irq.exit

if.else.i:                                        ; preds = %convert_offset_index.exit116
  call void @__sanitizer_cov_trace_pc() #14
  %21 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %gic_peek_irq.exit

gic_peek_irq.exit:                                ; preds = %if.else.i, %do.body.i
  %base.0.i = phi ptr [ %add.ptr.i, %do.body.i ], [ %21, %if.else.i ]
  %rem.i = and i32 %index.i.0, 31
  %add.ptr4.i = getelementptr i8, ptr %base.0.i, i32 %retval.0.i115
  %22 = lshr i32 %index.i.0, 3
  %mul.i = and i32 %22, 536870908
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !228
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %25 = shl nuw i32 1, %rem.i
  %26 = and i32 %24, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool8.not = icmp eq i32 %26, 0
  br i1 %tobool8.not, label %if.else17.critedge, label %if.then9

if.then9:                                         ; preds = %gic_peek_irq.exit
  tail call void @gic_mask_irq(ptr noundef %d)
  %27 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hwirq.i.i, align 4
  %call.i.i45 = tail call fastcc i32 @__get_intid_range(i32 noundef %28) #12
  %29 = zext i32 %call.i.i45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call.i.i45, label %do.end.i [
    i32 0, label %if.then9.convert_offset_index.exit_crit_edge
    i32 1, label %if.then9.convert_offset_index.exit_crit_edge127
    i32 2, label %if.then9.convert_offset_index.exit_crit_edge128
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb3.i
  ]

if.then9.convert_offset_index.exit_crit_edge128:  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

if.then9.convert_offset_index.exit_crit_edge127:  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

if.then9.convert_offset_index.exit_crit_edge:     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

sw.bb1.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %add.i46 = add i32 %28, -1024
  br label %convert_offset_index.exit

sw.bb3.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %sub5.i = add i32 %28, -4096
  br label %convert_offset_index.exit

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 332, i32 noundef 9, ptr noundef null) #12
  %30 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hwirq.i.i, align 4
  br label %convert_offset_index.exit

convert_offset_index.exit:                        ; preds = %do.end.i, %sw.bb3.i, %sw.bb1.i, %if.then9.convert_offset_index.exit_crit_edge, %if.then9.convert_offset_index.exit_crit_edge127, %if.then9.convert_offset_index.exit_crit_edge128
  %index.0 = phi i32 [ %31, %do.end.i ], [ %sub5.i, %sw.bb3.i ], [ %add.i46, %sw.bb1.i ], [ %28, %if.then9.convert_offset_index.exit_crit_edge ], [ %28, %if.then9.convert_offset_index.exit_crit_edge127 ], [ %28, %if.then9.convert_offset_index.exit_crit_edge128 ]
  %retval.0.i47 = phi i32 [ 24576, %do.end.i ], [ 32768, %sw.bb3.i ], [ 24576, %sw.bb1.i ], [ 24576, %if.then9.convert_offset_index.exit_crit_edge ], [ 24576, %if.then9.convert_offset_index.exit_crit_edge127 ], [ 24576, %if.then9.convert_offset_index.exit_crit_edge128 ]
  %32 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hwirq.i.i, align 4
  %call.i.i49 = tail call fastcc i32 @__get_intid_range(i32 noundef %33) #12
  %34 = zext i32 %call.i.i49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %call.i.i49, label %convert_offset_index.exit.gic_dist_base.exit_crit_edge [
    i32 0, label %convert_offset_index.exit.do.body.i56_crit_edge
    i32 1, label %convert_offset_index.exit.do.body.i56_crit_edge129
    i32 3, label %convert_offset_index.exit.do.body.i56_crit_edge130
    i32 2, label %convert_offset_index.exit.sw.bb3.i57_crit_edge
    i32 4, label %convert_offset_index.exit.sw.bb3.i57_crit_edge131
  ]

convert_offset_index.exit.sw.bb3.i57_crit_edge131: ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i57

convert_offset_index.exit.sw.bb3.i57_crit_edge:   ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i57

convert_offset_index.exit.do.body.i56_crit_edge130: ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i56

convert_offset_index.exit.do.body.i56_crit_edge129: ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i56

convert_offset_index.exit.do.body.i56_crit_edge:  ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i56

convert_offset_index.exit.gic_dist_base.exit_crit_edge: ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %gic_dist_base.exit

do.body.i56:                                      ; preds = %convert_offset_index.exit.do.body.i56_crit_edge, %convert_offset_index.exit.do.body.i56_crit_edge129, %convert_offset_index.exit.do.body.i56_crit_edge130
  %35 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i.i50 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i50 to ptr
  %cpu.i51 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu.i51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i51, align 4
  %arrayidx.i52 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i52, align 4
  %add.i53 = add i32 %42, %36
  %43 = inttoptr i32 %add.i53 to ptr
  %rd_base.i54 = getelementptr inbounds %struct.anon.71, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %rd_base.i54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rd_base.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %45, i32 65536
  br label %gic_dist_base.exit

sw.bb3.i57:                                       ; preds = %convert_offset_index.exit.sw.bb3.i57_crit_edge, %convert_offset_index.exit.sw.bb3.i57_crit_edge131
  %46 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %gic_dist_base.exit

gic_dist_base.exit:                               ; preds = %sw.bb3.i57, %do.body.i56, %convert_offset_index.exit.gic_dist_base.exit_crit_edge
  %retval.0.i58 = phi ptr [ %46, %sw.bb3.i57 ], [ %add.ptr.i55, %do.body.i56 ], [ null, %convert_offset_index.exit.gic_dist_base.exit_crit_edge ]
  %add.ptr.c = getelementptr i8, ptr %retval.0.i58, i32 %retval.0.i47
  %mul.c = shl i32 %index.0, 3
  %add.ptr13.c = getelementptr i8, ptr %add.ptr.c, i32 %mul.c
  %arrayidx.c = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu.0
  %47 = ptrtoint ptr %arrayidx.c to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.c, align 4
  %or13.i120 = and i32 %48, 16777215
  %49 = tail call i32 @llvm.bswap.i32(i32 %or13.i120) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.c, i32 %49) #12, !srcloc !241
  %50 = and i32 %48, -16777216
  %add.ptr.i61 = getelementptr i8, ptr %add.ptr13.c, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %50) #12, !srcloc !241
  tail call void @gic_unmask_irq(ptr noundef %d)
  br label %if.end18

if.else17.critedge:                               ; preds = %gic_peek_irq.exit
  %51 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hwirq.i.i, align 4
  %call.i.i63 = tail call fastcc i32 @__get_intid_range(i32 noundef %52) #12
  %53 = zext i32 %call.i.i63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %call.i.i63, label %do.end.i69 [
    i32 0, label %if.else17.critedge.convert_offset_index.exit71_crit_edge
    i32 1, label %if.else17.critedge.convert_offset_index.exit71_crit_edge132
    i32 2, label %if.else17.critedge.convert_offset_index.exit71_crit_edge133
    i32 3, label %sw.bb1.i66
    i32 4, label %sw.bb3.i68
  ]

if.else17.critedge.convert_offset_index.exit71_crit_edge133: ; preds = %if.else17.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit71

if.else17.critedge.convert_offset_index.exit71_crit_edge132: ; preds = %if.else17.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit71

if.else17.critedge.convert_offset_index.exit71_crit_edge: ; preds = %if.else17.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit71

sw.bb1.i66:                                       ; preds = %if.else17.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %add.i65 = add i32 %52, -1024
  br label %convert_offset_index.exit71

sw.bb3.i68:                                       ; preds = %if.else17.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %sub5.i67 = add i32 %52, -4096
  br label %convert_offset_index.exit71

do.end.i69:                                       ; preds = %if.else17.critedge
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 332, i32 noundef 9, ptr noundef null) #12
  %54 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hwirq.i.i, align 4
  br label %convert_offset_index.exit71

convert_offset_index.exit71:                      ; preds = %do.end.i69, %sw.bb3.i68, %sw.bb1.i66, %if.else17.critedge.convert_offset_index.exit71_crit_edge, %if.else17.critedge.convert_offset_index.exit71_crit_edge132, %if.else17.critedge.convert_offset_index.exit71_crit_edge133
  %index.1 = phi i32 [ %55, %do.end.i69 ], [ %sub5.i67, %sw.bb3.i68 ], [ %add.i65, %sw.bb1.i66 ], [ %52, %if.else17.critedge.convert_offset_index.exit71_crit_edge ], [ %52, %if.else17.critedge.convert_offset_index.exit71_crit_edge132 ], [ %52, %if.else17.critedge.convert_offset_index.exit71_crit_edge133 ]
  %retval.0.i70 = phi i32 [ 24576, %do.end.i69 ], [ 32768, %sw.bb3.i68 ], [ 24576, %sw.bb1.i66 ], [ 24576, %if.else17.critedge.convert_offset_index.exit71_crit_edge ], [ 24576, %if.else17.critedge.convert_offset_index.exit71_crit_edge132 ], [ 24576, %if.else17.critedge.convert_offset_index.exit71_crit_edge133 ]
  %56 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hwirq.i.i, align 4
  %call.i.i73 = tail call fastcc i32 @__get_intid_range(i32 noundef %57) #12
  %58 = zext i32 %call.i.i73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %call.i.i73, label %convert_offset_index.exit71.gic_dist_base.exit83_crit_edge [
    i32 0, label %convert_offset_index.exit71.do.body.i80_crit_edge
    i32 1, label %convert_offset_index.exit71.do.body.i80_crit_edge134
    i32 3, label %convert_offset_index.exit71.do.body.i80_crit_edge135
    i32 2, label %convert_offset_index.exit71.sw.bb3.i81_crit_edge
    i32 4, label %convert_offset_index.exit71.sw.bb3.i81_crit_edge136
  ]

convert_offset_index.exit71.sw.bb3.i81_crit_edge136: ; preds = %convert_offset_index.exit71
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i81

convert_offset_index.exit71.sw.bb3.i81_crit_edge: ; preds = %convert_offset_index.exit71
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i81

convert_offset_index.exit71.do.body.i80_crit_edge135: ; preds = %convert_offset_index.exit71
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i80

convert_offset_index.exit71.do.body.i80_crit_edge134: ; preds = %convert_offset_index.exit71
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i80

convert_offset_index.exit71.do.body.i80_crit_edge: ; preds = %convert_offset_index.exit71
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i80

convert_offset_index.exit71.gic_dist_base.exit83_crit_edge: ; preds = %convert_offset_index.exit71
  call void @__sanitizer_cov_trace_pc() #14
  br label %gic_dist_base.exit83

do.body.i80:                                      ; preds = %convert_offset_index.exit71.do.body.i80_crit_edge, %convert_offset_index.exit71.do.body.i80_crit_edge134, %convert_offset_index.exit71.do.body.i80_crit_edge135
  %59 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %60 = ptrtoint ptr %59 to i32
  %61 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i.i74 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i74 to ptr
  %cpu.i75 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cpu.i75 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu.i75, align 4
  %arrayidx.i76 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i76, align 4
  %add.i77 = add i32 %66, %60
  %67 = inttoptr i32 %add.i77 to ptr
  %rd_base.i78 = getelementptr inbounds %struct.anon.71, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %rd_base.i78 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rd_base.i78, align 4
  %add.ptr.i79 = getelementptr i8, ptr %69, i32 65536
  br label %gic_dist_base.exit83

sw.bb3.i81:                                       ; preds = %convert_offset_index.exit71.sw.bb3.i81_crit_edge, %convert_offset_index.exit71.sw.bb3.i81_crit_edge136
  %70 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %gic_dist_base.exit83

gic_dist_base.exit83:                             ; preds = %sw.bb3.i81, %do.body.i80, %convert_offset_index.exit71.gic_dist_base.exit83_crit_edge
  %retval.0.i82 = phi ptr [ %70, %sw.bb3.i81 ], [ %add.ptr.i79, %do.body.i80 ], [ null, %convert_offset_index.exit71.gic_dist_base.exit83_crit_edge ]
  %add.ptr.c37 = getelementptr i8, ptr %retval.0.i82, i32 %retval.0.i70
  %mul.c38 = shl i32 %index.1, 3
  %add.ptr13.c39 = getelementptr i8, ptr %add.ptr.c37, i32 %mul.c38
  %arrayidx.c40 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu.0
  %71 = ptrtoint ptr %arrayidx.c40 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.c40, align 4
  %or13.i95122 = and i32 %72, 16777215
  %73 = tail call i32 @llvm.bswap.i32(i32 %or13.i95122) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.c39, i32 %73) #12, !srcloc !241
  %74 = and i32 %72, -16777216
  %add.ptr.i99 = getelementptr i8, ptr %add.ptr13.c39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %74) #12, !srcloc !241
  %75 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #12, !srcloc !228
  %.mask18.i.i = and i32 %76, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask18.i.i)
  %tobool.not19.i.i = icmp eq i32 %.mask18.i.i, 0
  br i1 %tobool.not19.i.i, label %gic_dist_base.exit83.if.end18_crit_edge, label %gic_dist_base.exit83.while.body.i.i_crit_edge

gic_dist_base.exit83.while.body.i.i_crit_edge:    ; preds = %gic_dist_base.exit83
  br label %while.body.i.i

gic_dist_base.exit83.if.end18_crit_edge:          ; preds = %gic_dist_base.exit83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

while.body.i.i:                                   ; preds = %do.end12.i.i.while.body.i.i_crit_edge, %gic_dist_base.exit83.while.body.i.i_crit_edge
  %count.020.i.i = phi i32 [ %dec.i.i, %do.end12.i.i.while.body.i.i_crit_edge ], [ 1000000, %gic_dist_base.exit83.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %count.020.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool1.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i100, label %do.end12.i.i

if.then.i.i100:                                   ; preds = %while.body.i.i
  %call2.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @gic_do_wait_for_rwp._rs, ptr noundef nonnull @__func__.gic_do_wait_for_rwp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i100.if.end18_crit_edge, label %do.end.i.i

if.then.i.i100.if.end18_crit_edge:                ; preds = %if.then.i.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.end.i.i:                                       ; preds = %if.then.i.i100
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #15
  br label %if.end18

do.end12.i.i:                                     ; preds = %while.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !244
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !245
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748) #12
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #12, !srcloc !228
  %.mask.i.i = and i32 %78, 128
  %tobool.not.i.i102 = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i102, label %do.end12.i.i.if.end18_crit_edge, label %do.end12.i.i.while.body.i.i_crit_edge

do.end12.i.i.while.body.i.i_crit_edge:            ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

do.end12.i.i.if.end18_crit_edge:                  ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end18:                                         ; preds = %do.end12.i.i.if.end18_crit_edge, %do.end.i.i, %if.then.i.i100.if.end18_crit_edge, %gic_dist_base.exit83.if.end18_crit_edge, %gic_dist_base.exit
  %rem.i103 = and i32 %cpu.0, 31
  %add.i104 = add nuw nsw i32 %rem.i103, 1
  %arrayidx.i105 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i104
  %div3.i = lshr i32 %cpu.0, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i106 = getelementptr i32, ptr %arrayidx.i105, i32 %idx.neg.i
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %79 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %common.i, align 4
  %effective_affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %effective_affinity.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %effective_affinity.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %83 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %83, 31
  %84 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %84, 536870908
  %85 = call ptr @memcpy(ptr %82, ptr %add.ptr.i106, i32 %mul.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end3.cleanup_crit_edge, %if.end3.cleanup_crit_edge123, %if.end3.cleanup_crit_edge124, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end18 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge123 ], [ -22, %if.end3.cleanup_crit_edge124 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_retrigger(ptr nocapture noundef readonly %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %1)
  %cmp.i = icmp ugt i32 %1, 8191
  br i1 %cmp.i, label %entry.gic_irq_set_irqchip_state.exit_crit_edge, label %if.end.i

entry.gic_irq_set_irqchip_state.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gic_irq_set_irqchip_state.exit

if.end.i:                                         ; preds = %entry
  %call.i.i1 = tail call fastcc i32 @__get_intid_range(i32 noundef %1) #12
  %2 = zext i32 %call.i.i1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %call.i.i1, label %do.end.i [
    i32 0, label %if.end.i.convert_offset_index.exit_crit_edge
    i32 1, label %if.end.i.convert_offset_index.exit_crit_edge3
    i32 2, label %if.end.i.convert_offset_index.exit_crit_edge4
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb3.i
  ]

if.end.i.convert_offset_index.exit_crit_edge4:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

if.end.i.convert_offset_index.exit_crit_edge3:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

if.end.i.convert_offset_index.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add nsw i32 %1, -1024
  br label %convert_offset_index.exit

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub5.i = add nsw i32 %1, -4096
  br label %convert_offset_index.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 332, i32 noundef 9, ptr noundef null) #12
  %3 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq.i, align 4
  br label %convert_offset_index.exit

convert_offset_index.exit:                        ; preds = %do.end.i, %sw.bb3.i, %sw.bb1.i, %if.end.i.convert_offset_index.exit_crit_edge, %if.end.i.convert_offset_index.exit_crit_edge3, %if.end.i.convert_offset_index.exit_crit_edge4
  %index.i.i.0 = phi i32 [ %4, %do.end.i ], [ %sub5.i, %sw.bb3.i ], [ %add.i, %sw.bb1.i ], [ %1, %if.end.i.convert_offset_index.exit_crit_edge ], [ %1, %if.end.i.convert_offset_index.exit_crit_edge3 ], [ %1, %if.end.i.convert_offset_index.exit_crit_edge4 ]
  %retval.0.i2 = phi i32 [ 512, %do.end.i ], [ 5632, %sw.bb3.i ], [ 512, %sw.bb1.i ], [ 512, %if.end.i.convert_offset_index.exit_crit_edge ], [ 512, %if.end.i.convert_offset_index.exit_crit_edge3 ], [ 512, %if.end.i.convert_offset_index.exit_crit_edge4 ]
  %5 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwirq.i, align 4
  %call.i.i.i.i = tail call fastcc i32 @__get_intid_range(i32 noundef %6) #12
  %7 = zext i32 %call.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %call.i.i.i.i, label %if.else.i.i [
    i32 0, label %convert_offset_index.exit.do.body.i.i_crit_edge
    i32 1, label %convert_offset_index.exit.do.body.i.i_crit_edge5
    i32 3, label %convert_offset_index.exit.do.body.i.i_crit_edge6
  ]

convert_offset_index.exit.do.body.i.i_crit_edge6: ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

convert_offset_index.exit.do.body.i.i_crit_edge5: ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

convert_offset_index.exit.do.body.i.i_crit_edge:  ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %convert_offset_index.exit.do.body.i.i_crit_edge, %convert_offset_index.exit.do.body.i.i_crit_edge5, %convert_offset_index.exit.do.body.i.i_crit_edge6
  %8 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i.i to ptr
  %rd_base.i.i = getelementptr inbounds %struct.anon.71, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %rd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rd_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 65536
  br label %gic_poke_irq.exit.i

if.else.i.i:                                      ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %19 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %gic_poke_irq.exit.i

gic_poke_irq.exit.i:                              ; preds = %if.else.i.i, %do.body.i.i
  %base.0.i.i = phi ptr [ %add.ptr.i.i, %do.body.i.i ], [ %19, %if.else.i.i ]
  %rwp_wait.0.i.i = phi ptr [ @gic_redist_wait_for_rwp, %do.body.i.i ], [ @gic_dist_wait_for_rwp, %if.else.i.i ]
  %rem.i.i = and i32 %index.i.i.0, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #12
  %add.ptr4.i.i = getelementptr i8, ptr %base.0.i.i, i32 %retval.0.i2
  %21 = lshr i32 %index.i.i.0, 3
  %mul.i.i = and i32 %21, 536870908
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %20) #12, !srcloc !241
  tail call void %rwp_wait.0.i.i() #12, !callees !243
  br label %gic_irq_set_irqchip_state.exit

gic_irq_set_irqchip_state.exit:                   ; preds = %gic_poke_irq.exit.i, %entry.gic_irq_set_irqchip_state.exit_crit_edge
  %22 = xor i1 %cmp.i, true
  %lnot.ext = zext i1 %22 to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  %call.i = tail call fastcc i32 @__get_intid_range(i32 noundef %1) #12
  %2 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call.i, label %entry.if.else_crit_edge [
    i32 0, label %if.then
    i32 2, label %entry.land.lhs.true_crit_edge
    i32 4, label %entry.land.lhs.true_crit_edge52
    i32 1, label %entry.do.body_crit_edge
    i32 3, label %entry.do.body_crit_edge53
  ]

entry.do.body_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

entry.land.lhs.true_crit_edge52:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp2.not = icmp eq i32 %type, 1
  %cond = select i1 %cmp2.not, i32 0, i32 -22
  br label %cleanup

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge52
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %type, label %land.lhs.true.cleanup_crit_edge [
    i32 4, label %land.lhs.true.if.end9_crit_edge
    i32 1, label %land.lhs.true.if.end9_crit_edge54
  ]

land.lhs.true.if.end9_crit_edge54:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge54
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cond51 = icmp eq i32 %call.i, 3
  br i1 %cond51, label %if.end9.do.body_crit_edge, label %if.end9.if.else_crit_edge

if.end9.if.else_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %if.end9.do.body_crit_edge, %entry.do.body_crit_edge, %entry.do.body_crit_edge53
  %4 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %rd_base = getelementptr inbounds %struct.anon.71, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %rd_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rd_base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 65536
  br label %if.end14

if.else:                                          ; preds = %if.end9.if.else_crit_edge, %entry.if.else_crit_edge
  %15 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %do.body
  %base.0 = phi ptr [ %add.ptr, %do.body ], [ %15, %if.else ]
  %rwp_wait.0 = phi ptr [ @gic_redist_wait_for_rwp, %do.body ], [ @gic_dist_wait_for_rwp, %if.else ]
  %16 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %call.i, label %do.end.i [
    i32 0, label %if.end14.convert_offset_index.exit_crit_edge
    i32 1, label %if.end14.convert_offset_index.exit_crit_edge55
    i32 2, label %if.end14.convert_offset_index.exit_crit_edge56
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb3.i
  ]

if.end14.convert_offset_index.exit_crit_edge56:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

if.end14.convert_offset_index.exit_crit_edge55:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

if.end14.convert_offset_index.exit_crit_edge:     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

sw.bb1.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add i32 %1, -1024
  br label %convert_offset_index.exit

sw.bb3.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %sub5.i = add i32 %1, -4096
  br label %convert_offset_index.exit

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 332, i32 noundef 9, ptr noundef null) #12
  %17 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwirq.i, align 4
  br label %convert_offset_index.exit

convert_offset_index.exit:                        ; preds = %do.end.i, %sw.bb3.i, %sw.bb1.i, %if.end14.convert_offset_index.exit_crit_edge, %if.end14.convert_offset_index.exit_crit_edge55, %if.end14.convert_offset_index.exit_crit_edge56
  %index.0 = phi i32 [ %18, %do.end.i ], [ %sub5.i, %sw.bb3.i ], [ %add.i, %sw.bb1.i ], [ %1, %if.end14.convert_offset_index.exit_crit_edge ], [ %1, %if.end14.convert_offset_index.exit_crit_edge55 ], [ %1, %if.end14.convert_offset_index.exit_crit_edge56 ]
  %retval.0.i49 = phi i32 [ 3072, %do.end.i ], [ 12288, %sw.bb3.i ], [ 3072, %sw.bb1.i ], [ 3072, %if.end14.convert_offset_index.exit_crit_edge ], [ 3072, %if.end14.convert_offset_index.exit_crit_edge55 ], [ 3072, %if.end14.convert_offset_index.exit_crit_edge56 ]
  %add.ptr16 = getelementptr i8, ptr %base.0, i32 %retval.0.i49
  %call17 = tail call i32 @gic_configure_irq(i32 noundef %index.0, i32 noundef %type, ptr noundef %add.ptr16, ptr noundef nonnull %rwp_wait.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %convert_offset_index.exit.cleanup_crit_edge, label %land.lhs.true18

convert_offset_index.exit.cleanup_crit_edge:      ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true18:                                  ; preds = %convert_offset_index.exit
  %19 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call.i, label %land.lhs.true18.cleanup_crit_edge [
    i32 1, label %land.lhs.true18.do.end25_crit_edge
    i32 3, label %land.lhs.true18.do.end25_crit_edge57
  ]

land.lhs.true18.do.end25_crit_edge57:             ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

land.lhs.true18.do.end25_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end25:                                         ; preds = %land.lhs.true18.do.end25_crit_edge, %land.lhs.true18.do.end25_crit_edge57
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %land.lhs.true18.cleanup_crit_edge, %convert_offset_index.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end25 ], [ 0, %convert_offset_index.exit.cleanup_crit_edge ], [ %call17, %land.lhs.true18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_irq_get_irqchip_state(ptr nocapture noundef readonly %d, i32 noundef %which, ptr nocapture noundef writeonly %val) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %1)
  %cmp = icmp ugt i32 %1, 8191
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %2 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %which, label %if.end.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %if.end
  %call.i.i = tail call fastcc i32 @__get_intid_range(i32 noundef %1) #12
  %3 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %call.i.i, label %do.end.i [
    i32 0, label %sw.bb.convert_offset_index.exit_crit_edge
    i32 1, label %sw.bb.convert_offset_index.exit_crit_edge71
    i32 2, label %sw.bb.convert_offset_index.exit_crit_edge72
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb3.i
  ]

sw.bb.convert_offset_index.exit_crit_edge72:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

sw.bb.convert_offset_index.exit_crit_edge71:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

sw.bb.convert_offset_index.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %add.i50 = add nsw i32 %1, -1024
  br label %convert_offset_index.exit

sw.bb3.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %sub5.i = add nsw i32 %1, -4096
  br label %convert_offset_index.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 332, i32 noundef 9, ptr noundef null) #12
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  br label %convert_offset_index.exit

convert_offset_index.exit:                        ; preds = %do.end.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.convert_offset_index.exit_crit_edge, %sw.bb.convert_offset_index.exit_crit_edge71, %sw.bb.convert_offset_index.exit_crit_edge72
  %index.i.0 = phi i32 [ %5, %do.end.i ], [ %sub5.i, %sw.bb3.i ], [ %add.i50, %sw.bb1.i ], [ %1, %sw.bb.convert_offset_index.exit_crit_edge ], [ %1, %sw.bb.convert_offset_index.exit_crit_edge71 ], [ %1, %sw.bb.convert_offset_index.exit_crit_edge72 ]
  %retval.0.i = phi i32 [ 512, %do.end.i ], [ 5632, %sw.bb3.i ], [ 512, %sw.bb1.i ], [ 512, %sw.bb.convert_offset_index.exit_crit_edge ], [ 512, %sw.bb.convert_offset_index.exit_crit_edge71 ], [ 512, %sw.bb.convert_offset_index.exit_crit_edge72 ]
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %call.i.i.i = tail call fastcc i32 @__get_intid_range(i32 noundef %7) #12
  %8 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %call.i.i.i, label %if.else.i [
    i32 0, label %convert_offset_index.exit.do.body.i_crit_edge
    i32 1, label %convert_offset_index.exit.do.body.i_crit_edge73
    i32 3, label %convert_offset_index.exit.do.body.i_crit_edge74
  ]

convert_offset_index.exit.do.body.i_crit_edge74:  ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

convert_offset_index.exit.do.body.i_crit_edge73:  ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

convert_offset_index.exit.do.body.i_crit_edge:    ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %convert_offset_index.exit.do.body.i_crit_edge, %convert_offset_index.exit.do.body.i_crit_edge73, %convert_offset_index.exit.do.body.i_crit_edge74
  %9 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %rd_base.i = getelementptr inbounds %struct.anon.71, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %rd_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 65536
  br label %gic_peek_irq.exit

if.else.i:                                        ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %20 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %gic_peek_irq.exit

gic_peek_irq.exit:                                ; preds = %if.else.i, %do.body.i
  %base.0.i = phi ptr [ %add.ptr.i, %do.body.i ], [ %20, %if.else.i ]
  %rem.i = and i32 %index.i.0, 31
  %add.ptr4.i = getelementptr i8, ptr %base.0.i, i32 %retval.0.i
  %21 = lshr i32 %index.i.0, 3
  %mul.i = and i32 %21, 536870908
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !228
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  %24 = shl nuw i32 1, %rem.i
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool = icmp ne i32 %25, 0
  br label %return.sink.split

sw.bb1:                                           ; preds = %if.end
  %call.i.i52 = tail call fastcc i32 @__get_intid_range(i32 noundef %1) #12
  %26 = zext i32 %call.i.i52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %call.i.i52, label %do.end.i58 [
    i32 0, label %sw.bb1.convert_offset_index.exit60_crit_edge
    i32 1, label %sw.bb1.convert_offset_index.exit60_crit_edge75
    i32 2, label %sw.bb1.convert_offset_index.exit60_crit_edge76
    i32 3, label %sw.bb1.i55
    i32 4, label %sw.bb3.i57
  ]

sw.bb1.convert_offset_index.exit60_crit_edge76:   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit60

sw.bb1.convert_offset_index.exit60_crit_edge75:   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit60

sw.bb1.convert_offset_index.exit60_crit_edge:     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit60

sw.bb1.i55:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %add.i54 = add nsw i32 %1, -1024
  br label %convert_offset_index.exit60

sw.bb3.i57:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %sub5.i56 = add nsw i32 %1, -4096
  br label %convert_offset_index.exit60

do.end.i58:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 332, i32 noundef 9, ptr noundef null) #12
  %27 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hwirq, align 4
  br label %convert_offset_index.exit60

convert_offset_index.exit60:                      ; preds = %do.end.i58, %sw.bb3.i57, %sw.bb1.i55, %sw.bb1.convert_offset_index.exit60_crit_edge, %sw.bb1.convert_offset_index.exit60_crit_edge75, %sw.bb1.convert_offset_index.exit60_crit_edge76
  %index.i14.0 = phi i32 [ %28, %do.end.i58 ], [ %sub5.i56, %sw.bb3.i57 ], [ %add.i54, %sw.bb1.i55 ], [ %1, %sw.bb1.convert_offset_index.exit60_crit_edge ], [ %1, %sw.bb1.convert_offset_index.exit60_crit_edge75 ], [ %1, %sw.bb1.convert_offset_index.exit60_crit_edge76 ]
  %retval.0.i59 = phi i32 [ 768, %do.end.i58 ], [ 6656, %sw.bb3.i57 ], [ 768, %sw.bb1.i55 ], [ 768, %sw.bb1.convert_offset_index.exit60_crit_edge ], [ 768, %sw.bb1.convert_offset_index.exit60_crit_edge75 ], [ 768, %sw.bb1.convert_offset_index.exit60_crit_edge76 ]
  %29 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hwirq, align 4
  %call.i.i.i17 = tail call fastcc i32 @__get_intid_range(i32 noundef %30) #12
  %31 = zext i32 %call.i.i.i17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %call.i.i.i17, label %if.else.i25 [
    i32 0, label %convert_offset_index.exit60.do.body.i24_crit_edge
    i32 1, label %convert_offset_index.exit60.do.body.i24_crit_edge77
    i32 3, label %convert_offset_index.exit60.do.body.i24_crit_edge78
  ]

convert_offset_index.exit60.do.body.i24_crit_edge78: ; preds = %convert_offset_index.exit60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i24

convert_offset_index.exit60.do.body.i24_crit_edge77: ; preds = %convert_offset_index.exit60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i24

convert_offset_index.exit60.do.body.i24_crit_edge: ; preds = %convert_offset_index.exit60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i24

do.body.i24:                                      ; preds = %convert_offset_index.exit60.do.body.i24_crit_edge, %convert_offset_index.exit60.do.body.i24_crit_edge77, %convert_offset_index.exit60.do.body.i24_crit_edge78
  %32 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %33 = ptrtoint ptr %32 to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i.i18 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i18 to ptr
  %cpu.i19 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu.i19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i19, align 4
  %arrayidx.i20 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i20, align 4
  %add.i21 = add i32 %39, %33
  %40 = inttoptr i32 %add.i21 to ptr
  %rd_base.i22 = getelementptr inbounds %struct.anon.71, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %rd_base.i22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rd_base.i22, align 4
  %add.ptr.i23 = getelementptr i8, ptr %42, i32 65536
  br label %gic_peek_irq.exit31

if.else.i25:                                      ; preds = %convert_offset_index.exit60
  call void @__sanitizer_cov_trace_pc() #14
  %43 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %gic_peek_irq.exit31

gic_peek_irq.exit31:                              ; preds = %if.else.i25, %do.body.i24
  %base.0.i26 = phi ptr [ %add.ptr.i23, %do.body.i24 ], [ %43, %if.else.i25 ]
  %rem.i27 = and i32 %index.i14.0, 31
  %add.ptr4.i28 = getelementptr i8, ptr %base.0.i26, i32 %retval.0.i59
  %44 = lshr i32 %index.i14.0, 3
  %mul.i29 = and i32 %44, 536870908
  %add.ptr5.i30 = getelementptr i8, ptr %add.ptr4.i28, i32 %mul.i29
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i30) #12, !srcloc !228
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #12
  %47 = shl nuw i32 1, %rem.i27
  %48 = and i32 %46, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool3 = icmp ne i32 %48, 0
  br label %return.sink.split

sw.bb5:                                           ; preds = %if.end
  %call.i.i62 = tail call fastcc i32 @__get_intid_range(i32 noundef %1) #12
  %49 = zext i32 %call.i.i62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %call.i.i62, label %do.end.i68 [
    i32 0, label %sw.bb5.convert_offset_index.exit70_crit_edge
    i32 1, label %sw.bb5.convert_offset_index.exit70_crit_edge79
    i32 2, label %sw.bb5.convert_offset_index.exit70_crit_edge80
    i32 3, label %sw.bb1.i65
    i32 4, label %sw.bb3.i67
  ]

sw.bb5.convert_offset_index.exit70_crit_edge80:   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit70

sw.bb5.convert_offset_index.exit70_crit_edge79:   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit70

sw.bb5.convert_offset_index.exit70_crit_edge:     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit70

sw.bb1.i65:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  %add.i64 = add nsw i32 %1, -1024
  br label %convert_offset_index.exit70

sw.bb3.i67:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  %sub5.i66 = add nsw i32 %1, -4096
  br label %convert_offset_index.exit70

do.end.i68:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 332, i32 noundef 9, ptr noundef null) #12
  %50 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hwirq, align 4
  br label %convert_offset_index.exit70

convert_offset_index.exit70:                      ; preds = %do.end.i68, %sw.bb3.i67, %sw.bb1.i65, %sw.bb5.convert_offset_index.exit70_crit_edge, %sw.bb5.convert_offset_index.exit70_crit_edge79, %sw.bb5.convert_offset_index.exit70_crit_edge80
  %index.i32.0 = phi i32 [ %51, %do.end.i68 ], [ %sub5.i66, %sw.bb3.i67 ], [ %add.i64, %sw.bb1.i65 ], [ %1, %sw.bb5.convert_offset_index.exit70_crit_edge ], [ %1, %sw.bb5.convert_offset_index.exit70_crit_edge79 ], [ %1, %sw.bb5.convert_offset_index.exit70_crit_edge80 ]
  %retval.0.i69 = phi i32 [ 256, %do.end.i68 ], [ 4608, %sw.bb3.i67 ], [ 256, %sw.bb1.i65 ], [ 256, %sw.bb5.convert_offset_index.exit70_crit_edge ], [ 256, %sw.bb5.convert_offset_index.exit70_crit_edge79 ], [ 256, %sw.bb5.convert_offset_index.exit70_crit_edge80 ]
  %52 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hwirq, align 4
  %call.i.i.i35 = tail call fastcc i32 @__get_intid_range(i32 noundef %53) #12
  %54 = zext i32 %call.i.i.i35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %call.i.i.i35, label %if.else.i43 [
    i32 0, label %convert_offset_index.exit70.do.body.i42_crit_edge
    i32 1, label %convert_offset_index.exit70.do.body.i42_crit_edge81
    i32 3, label %convert_offset_index.exit70.do.body.i42_crit_edge82
  ]

convert_offset_index.exit70.do.body.i42_crit_edge82: ; preds = %convert_offset_index.exit70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i42

convert_offset_index.exit70.do.body.i42_crit_edge81: ; preds = %convert_offset_index.exit70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i42

convert_offset_index.exit70.do.body.i42_crit_edge: ; preds = %convert_offset_index.exit70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i42

do.body.i42:                                      ; preds = %convert_offset_index.exit70.do.body.i42_crit_edge, %convert_offset_index.exit70.do.body.i42_crit_edge81, %convert_offset_index.exit70.do.body.i42_crit_edge82
  %55 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %56 = ptrtoint ptr %55 to i32
  %57 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i.i36 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i36 to ptr
  %cpu.i37 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu.i37 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu.i37, align 4
  %arrayidx.i38 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i38, align 4
  %add.i39 = add i32 %62, %56
  %63 = inttoptr i32 %add.i39 to ptr
  %rd_base.i40 = getelementptr inbounds %struct.anon.71, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %rd_base.i40 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rd_base.i40, align 4
  %add.ptr.i41 = getelementptr i8, ptr %65, i32 65536
  br label %gic_peek_irq.exit49

if.else.i43:                                      ; preds = %convert_offset_index.exit70
  call void @__sanitizer_cov_trace_pc() #14
  %66 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %gic_peek_irq.exit49

gic_peek_irq.exit49:                              ; preds = %if.else.i43, %do.body.i42
  %base.0.i44 = phi ptr [ %add.ptr.i41, %do.body.i42 ], [ %66, %if.else.i43 ]
  %rem.i45 = and i32 %index.i32.0, 31
  %add.ptr4.i46 = getelementptr i8, ptr %base.0.i44, i32 %retval.0.i69
  %67 = lshr i32 %index.i32.0, 3
  %mul.i47 = and i32 %67, 536870908
  %add.ptr5.i48 = getelementptr i8, ptr %add.ptr4.i46, i32 %mul.i47
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i48) #12, !srcloc !228
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #12
  %70 = shl nuw i32 1, %rem.i45
  %71 = and i32 %69, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool7.not = icmp eq i32 %71, 0
  br label %return.sink.split

return.sink.split:                                ; preds = %gic_peek_irq.exit49, %gic_peek_irq.exit31, %gic_peek_irq.exit
  %tobool.sink = phi i1 [ %tobool, %gic_peek_irq.exit ], [ %tobool3, %gic_peek_irq.exit31 ], [ %tobool7.not, %gic_peek_irq.exit49 ]
  %frombool = zext i1 %tobool.sink to i8
  %72 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %frombool, ptr %val, align 1
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_irq_set_irqchip_state(ptr nocapture noundef readonly %d, i32 noundef %which, i1 noundef zeroext %val) #7 align 64 {
entry:
  %index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %1)
  %cmp = icmp ugt i32 %1, 8191
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %which, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %val, i32 512, i32 640
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %cond3 = select i1 %val, i32 768, i32 896
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %cond6 = select i1 %val, i32 384, i32 256
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %reg.0 = phi i32 [ %cond6, %sw.bb4 ], [ %cond3, %sw.bb1 ], [ %cond, %sw.bb ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #12
  %3 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %index.i, align 4, !annotation !227
  %call.i = call fastcc i32 @convert_offset_index(ptr noundef %d, i32 noundef %reg.0, ptr noundef nonnull %index.i) #12
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %call.i.i.i = tail call fastcc i32 @__get_intid_range(i32 noundef %7) #12
  %8 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %call.i.i.i, label %if.else.i [
    i32 0, label %sw.epilog.do.body.i_crit_edge
    i32 1, label %sw.epilog.do.body.i_crit_edge10
    i32 3, label %sw.epilog.do.body.i_crit_edge11
  ]

sw.epilog.do.body.i_crit_edge11:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

sw.epilog.do.body.i_crit_edge10:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

sw.epilog.do.body.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.do.body.i_crit_edge, %sw.epilog.do.body.i_crit_edge10, %sw.epilog.do.body.i_crit_edge11
  %9 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %rd_base.i = getelementptr inbounds %struct.anon.71, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %rd_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 65536
  br label %gic_poke_irq.exit

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %20 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %gic_poke_irq.exit

gic_poke_irq.exit:                                ; preds = %if.else.i, %do.body.i
  %base.0.i = phi ptr [ %add.ptr.i, %do.body.i ], [ %20, %if.else.i ]
  %rwp_wait.0.i = phi ptr [ @gic_redist_wait_for_rwp, %do.body.i ], [ @gic_dist_wait_for_rwp, %if.else.i ]
  %rem.i = and i32 %5, 31
  %shl.i = shl nuw i32 1, %rem.i
  %21 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #12
  %add.ptr4.i = getelementptr i8, ptr %base.0.i, i32 %call.i
  %22 = lshr i32 %5, 3
  %mul.i = and i32 %22, 536870908
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %21) #12, !srcloc !241
  tail call void %rwp_wait.0.i() #12, !callees !243
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #12
  br label %cleanup

cleanup:                                          ; preds = %gic_poke_irq.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %gic_poke_irq.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_ipi_send_mask(ptr nocapture noundef readonly %d, ptr noundef %mask) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp ugt i32 %1, 15
  br i1 %cmp, label %do.end, label %do.body22, !prof !229

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1207, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

do.body22:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @arm_heavy_mb() #12
  %call36 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call36, i32 %2)
  %cmp2537 = icmp ult i32 %call36, %2
  br i1 %cmp2537, label %do.body22.for.body_crit_edge, label %do.body22.for.end_crit_edge

do.body22.for.end_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body22.for.body_crit_edge:                     ; preds = %do.body22
  br label %for.body

for.body:                                         ; preds = %gic_compute_target_list.exit.for.body_crit_edge, %do.body22.for.body_crit_edge
  %3 = phi i32 [ %16, %gic_compute_target_list.exit.for.body_crit_edge ], [ %2, %do.body22.for.body_crit_edge ]
  %call38 = phi i32 [ %call, %gic_compute_target_list.exit.for.body_crit_edge ], [ %call36, %do.body22.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call38
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, -16
  %conv = zext i32 %and to i64
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.while.cond.i_crit_edge, %for.body
  %cpu.0.i = phi i32 [ %call38, %for.body ], [ %call.i, %if.end.i.while.cond.i_crit_edge ]
  %mpidr.0.i = phi i32 [ %5, %for.body ], [ %8, %if.end.i.while.cond.i_crit_edge ]
  %tlist.0.i = phi i16 [ 0, %for.body ], [ %conv1.i, %if.end.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cpu.0.i, i32 %3)
  %cmp.i = icmp ult i32 %cpu.0.i, %3
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.gic_compute_target_list.exit_crit_edge

while.cond.i.gic_compute_target_list.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gic_compute_target_list.exit

while.body.i:                                     ; preds = %while.cond.i
  %and.i = and i32 %mpidr.0.i, 15
  %shl.i = shl nuw nsw i32 1, %and.i
  %6 = trunc i32 %shl.i to i16
  %conv1.i = or i16 %tlist.0.i, %6
  %call.i = tail call i32 @cpumask_next(i32 noundef %cpu.0.i, ptr noundef %mask) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %3)
  %cmp2.not.i = icmp ult i32 %call.i, %3
  br i1 %cmp2.not.i, label %if.end.i, label %while.body.i.gic_compute_target_list.exit_crit_edge

while.body.i.gic_compute_target_list.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gic_compute_target_list.exit

if.end.i:                                         ; preds = %while.body.i
  %arrayidx4.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call.i
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4.i, align 4
  %and5.i = and i32 %8, -16
  %cmp6.not.i = icmp eq i32 %and5.i, %and
  br i1 %cmp6.not.i, label %if.end.i.while.cond.i_crit_edge, label %if.then8.i

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dec.i = add i32 %call.i, -1
  br label %gic_compute_target_list.exit

gic_compute_target_list.exit:                     ; preds = %if.then8.i, %while.body.i.gic_compute_target_list.exit_crit_edge, %while.cond.i.gic_compute_target_list.exit_crit_edge
  %cpu.1.i = phi i32 [ %dec.i, %if.then8.i ], [ %cpu.0.i, %while.body.i.gic_compute_target_list.exit_crit_edge ], [ %cpu.0.i, %while.cond.i.gic_compute_target_list.exit_crit_edge ]
  %tlist.1.i = phi i16 [ %conv1.i, %if.then8.i ], [ %tlist.0.i, %while.cond.i.gic_compute_target_list.exit_crit_edge ], [ %conv1.i, %while.body.i.gic_compute_target_list.exit_crit_edge ]
  %9 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwirq, align 4
  %11 = shl nuw nsw i64 %conv, 24
  %shl.i33 = and i64 %11, 71776119061217280
  %12 = shl nuw nsw i64 %conv, 16
  %shl3.i = and i64 %12, 1095216660480
  %or.i = or i64 %shl.i33, %shl3.i
  %shl4.i = shl i32 %10, 24
  %conv.i = zext i32 %shl4.i to i64
  %13 = shl nuw nsw i64 %conv, 8
  %shl8.i = and i64 %13, 16711680
  %14 = shl i64 %conv, 40
  %shl12.i = and i64 %14, 263882790666240
  %15 = zext i16 %tlist.1.i to i64
  %or5.i = or i64 %or.i, %shl8.i
  %or9.i = or i64 %or5.i, %shl12.i
  %or13.i = or i64 %or9.i, %15
  %or17.i = or i64 %or13.i, %conv.i
  tail call void asm sideeffect "mcrr p15, 0, ${0:Q}, ${0:R}, c12", "r"(i64 %or17.i) #12, !srcloc !247
  %call = tail call i32 @cpumask_next(i32 noundef %cpu.1.i, ptr noundef %mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp25 = icmp ult i32 %call, %16
  br i1 %cmp25, label %gic_compute_target_list.exit.for.body_crit_edge, label %gic_compute_target_list.exit.for.end_crit_edge

gic_compute_target_list.exit.for.end_crit_edge:   ; preds = %gic_compute_target_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

gic_compute_target_list.exit.for.body_crit_edge:  ; preds = %gic_compute_target_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %gic_compute_target_list.exit.for.end_crit_edge, %do.body22.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !248
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_irq_nmi_setup(ptr nocapture noundef readonly %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call = tail call ptr @irq_to_desc(i32 noundef %1) #12
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_irq_nmi_teardown(ptr nocapture noundef readonly %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call = tail call ptr @irq_to_desc(i32 noundef %1) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 528, i32 noundef 9, ptr noundef null) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @convert_offset_index(ptr nocapture noundef readonly %d, i32 noundef %offset, ptr nocapture noundef writeonly %index) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  %call.i = tail call fastcc i32 @__get_intid_range(i32 noundef %1) #12
  %2 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %call.i, label %entry.do.end_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge43
    i32 2, label %entry.sw.bb_crit_edge44
    i32 3, label %sw.bb1
    i32 4, label %sw.bb3
  ]

entry.sw.bb_crit_edge44:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge43:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge43, %entry.sw.bb_crit_edge44
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %index, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %1, -1024
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %index, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %sub5 = add i32 %1, -4096
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub5, ptr %index, align 4
  %6 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %offset, label %sw.bb3.do.end_crit_edge [
    i32 256, label %sw.bb3.return_crit_edge
    i32 384, label %sw.bb7
    i32 512, label %sw.bb8
    i32 640, label %sw.bb9
    i32 768, label %sw.bb10
    i32 896, label %sw.bb11
    i32 1024, label %sw.bb12
    i32 3072, label %sw.bb13
    i32 24576, label %sw.bb14
  ]

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb3.do.end_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

sw.bb7:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb8:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb9:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb10:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb11:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb12:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb13:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb14:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %sw.bb3.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 332, i32 noundef 9, ptr noundef null) #12
  %7 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq.i, align 4
  %9 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %index, align 4
  br label %return

return:                                           ; preds = %do.end, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb3.return_crit_edge, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %offset, %do.end ], [ 32768, %sw.bb14 ], [ 12288, %sw.bb13 ], [ 8192, %sw.bb12 ], [ 7168, %sw.bb11 ], [ 6656, %sw.bb10 ], [ 6144, %sw.bb9 ], [ 5632, %sw.bb8 ], [ 5120, %sw.bb7 ], [ %offset, %sw.bb1 ], [ %offset, %sw.bb ], [ 4608, %sw.bb3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_redist_wait_for_rwp() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %1
  %8 = inttoptr i32 %add to ptr
  %rd_base = getelementptr inbounds %struct.anon.71, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %rd_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rd_base, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !228
  %.mask18.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask18.i)
  %tobool.not19.i = icmp eq i32 %.mask18.i, 0
  br i1 %tobool.not19.i, label %entry.gic_do_wait_for_rwp.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.gic_do_wait_for_rwp.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gic_do_wait_for_rwp.exit

while.body.i:                                     ; preds = %do.end12.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %count.020.i = phi i32 [ %dec.i, %do.end12.i.while.body.i_crit_edge ], [ 1000000, %entry.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %count.020.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %if.then.i, label %do.end12.i

if.then.i:                                        ; preds = %while.body.i
  %call2.i = tail call i32 @___ratelimit(ptr noundef nonnull @gic_do_wait_for_rwp._rs, ptr noundef nonnull @__func__.gic_do_wait_for_rwp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.gic_do_wait_for_rwp.exit_crit_edge, label %do.end.i

if.then.i.gic_do_wait_for_rwp.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gic_do_wait_for_rwp.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #15
  br label %gic_do_wait_for_rwp.exit

do.end12.i:                                       ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !244
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !245
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !228
  %.mask.i = and i32 %13, 128
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %do.end12.i.gic_do_wait_for_rwp.exit_crit_edge, label %do.end12.i.while.body.i_crit_edge

do.end12.i.while.body.i_crit_edge:                ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

do.end12.i.gic_do_wait_for_rwp.exit_crit_edge:    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gic_do_wait_for_rwp.exit

gic_do_wait_for_rwp.exit:                         ; preds = %do.end12.i.gic_do_wait_for_rwp.exit_crit_edge, %do.end.i, %if.then.i.gic_do_wait_for_rwp.exit_crit_edge, %entry.gic_do_wait_for_rwp.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_dist_wait_for_rwp() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #12, !srcloc !228
  %.mask18.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask18.i)
  %tobool.not19.i = icmp eq i32 %.mask18.i, 0
  br i1 %tobool.not19.i, label %entry.gic_do_wait_for_rwp.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.gic_do_wait_for_rwp.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gic_do_wait_for_rwp.exit

while.body.i:                                     ; preds = %do.end12.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %count.020.i = phi i32 [ %dec.i, %do.end12.i.while.body.i_crit_edge ], [ 1000000, %entry.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %count.020.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %if.then.i, label %do.end12.i

if.then.i:                                        ; preds = %while.body.i
  %call2.i = tail call i32 @___ratelimit(ptr noundef nonnull @gic_do_wait_for_rwp._rs, ptr noundef nonnull @__func__.gic_do_wait_for_rwp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.gic_do_wait_for_rwp.exit_crit_edge, label %do.end.i

if.then.i.gic_do_wait_for_rwp.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gic_do_wait_for_rwp.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #15
  br label %gic_do_wait_for_rwp.exit

do.end12.i:                                       ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !244
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !245
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #12, !srcloc !228
  %.mask.i = and i32 %3, 128
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %do.end12.i.gic_do_wait_for_rwp.exit_crit_edge, label %do.end12.i.while.body.i_crit_edge

do.end12.i.while.body.i_crit_edge:                ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

do.end12.i.gic_do_wait_for_rwp.exit_crit_edge:    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gic_do_wait_for_rwp.exit

gic_do_wait_for_rwp.exit:                         ; preds = %do.end12.i.gic_do_wait_for_rwp.exit_crit_edge, %do.end.i, %if.then.i.gic_do_wait_for_rwp.exit_crit_edge, %entry.gic_do_wait_for_rwp.exit_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_and_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_configure_irq(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_eoimode1_mask_irq(ptr nocapture noundef readonly %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gic_mask_irq(ptr noundef %d)
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i.i, align 4
  %call.i.i = tail call fastcc i32 @__get_intid_range(i32 noundef %5) #12
  %6 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %call.i.i, label %do.end.i [
    i32 0, label %if.then.convert_offset_index.exit_crit_edge
    i32 1, label %if.then.convert_offset_index.exit_crit_edge4
    i32 2, label %if.then.convert_offset_index.exit_crit_edge5
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb3.i
  ]

if.then.convert_offset_index.exit_crit_edge5:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

if.then.convert_offset_index.exit_crit_edge4:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

if.then.convert_offset_index.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %convert_offset_index.exit

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add.i3 = add i32 %5, -1024
  br label %convert_offset_index.exit

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sub5.i = add i32 %5, -4096
  br label %convert_offset_index.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 332, i32 noundef 9, ptr noundef null) #12
  %7 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq.i.i, align 4
  br label %convert_offset_index.exit

convert_offset_index.exit:                        ; preds = %do.end.i, %sw.bb3.i, %sw.bb1.i, %if.then.convert_offset_index.exit_crit_edge, %if.then.convert_offset_index.exit_crit_edge4, %if.then.convert_offset_index.exit_crit_edge5
  %index.i.0 = phi i32 [ %8, %do.end.i ], [ %sub5.i, %sw.bb3.i ], [ %add.i3, %sw.bb1.i ], [ %5, %if.then.convert_offset_index.exit_crit_edge ], [ %5, %if.then.convert_offset_index.exit_crit_edge4 ], [ %5, %if.then.convert_offset_index.exit_crit_edge5 ]
  %retval.0.i = phi i32 [ 896, %do.end.i ], [ 7168, %sw.bb3.i ], [ 896, %sw.bb1.i ], [ 896, %if.then.convert_offset_index.exit_crit_edge ], [ 896, %if.then.convert_offset_index.exit_crit_edge4 ], [ 896, %if.then.convert_offset_index.exit_crit_edge5 ]
  %9 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwirq.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @__get_intid_range(i32 noundef %10) #12
  %11 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %call.i.i.i, label %if.else.i [
    i32 0, label %convert_offset_index.exit.do.body.i_crit_edge
    i32 1, label %convert_offset_index.exit.do.body.i_crit_edge6
    i32 3, label %convert_offset_index.exit.do.body.i_crit_edge7
  ]

convert_offset_index.exit.do.body.i_crit_edge7:   ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

convert_offset_index.exit.do.body.i_crit_edge6:   ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

convert_offset_index.exit.do.body.i_crit_edge:    ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %convert_offset_index.exit.do.body.i_crit_edge, %convert_offset_index.exit.do.body.i_crit_edge6, %convert_offset_index.exit.do.body.i_crit_edge7
  %12 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %rd_base.i = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %rd_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 65536
  br label %gic_poke_irq.exit

if.else.i:                                        ; preds = %convert_offset_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  br label %gic_poke_irq.exit

gic_poke_irq.exit:                                ; preds = %if.else.i, %do.body.i
  %base.0.i = phi ptr [ %add.ptr.i, %do.body.i ], [ %23, %if.else.i ]
  %rwp_wait.0.i = phi ptr [ @gic_redist_wait_for_rwp, %do.body.i ], [ @gic_dist_wait_for_rwp, %if.else.i ]
  %rem.i = and i32 %index.i.0, 31
  %shl.i = shl nuw i32 1, %rem.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #12
  %add.ptr4.i = getelementptr i8, ptr %base.0.i, i32 %retval.0.i
  %25 = lshr i32 %index.i.0, 3
  %mul.i = and i32 %25, 536870908
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %24) #12, !srcloc !241
  tail call void %rwp_wait.0.i() #12, !callees !243
  br label %if.end

if.end:                                           ; preds = %gic_poke_irq.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_eoimode1_eoi_irq(ptr nocapture noundef readonly %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %1)
  %cmp = icmp ugt i32 %1, 8191
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c11, 1", "r"(i32 %1) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gic_irq_set_vcpu_affinity(ptr nocapture noundef readonly %d, ptr noundef readnone %vcpu) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  %call.i = tail call fastcc i32 @__get_intid_range(i32 noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %vcpu, null
  %common.i5 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %common.i5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i5, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i = and i32 %5, -1048577
  %masksel = select i1 %tobool.not, i32 0, i32 1048576
  %or.i.sink = or i32 %and.i, %masksel
  store i32 %or.i.sink, ptr %3, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gic_iterate_rdists(ptr nocapture noundef readonly %fn) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 6), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp56.not = icmp eq i32 %0, 0
  br i1 %cmp56.not, label %entry.cleanup33_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.057 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 2), align 8
  %arrayidx = getelementptr %struct.redist_region, ptr %1, i32 %i.057
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 65512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !228
  %5 = lshr i32 %4, 24
  %6 = trunc i32 %5 to i8
  %trunc = and i8 %6, -16
  %7 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %trunc, label %cleanup [
    i8 48, label %for.body.do.body5.preheader_crit_edge
    i8 64, label %for.body.do.body5.preheader_crit_edge73
  ]

for.body.do.body5.preheader_crit_edge73:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.preheader

for.body.do.body5.preheader_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.preheader

do.body5.preheader:                               ; preds = %for.body.do.body5.preheader_crit_edge, %for.body.do.body5.preheader_crit_edge73
  br label %do.body5

do.body5:                                         ; preds = %if.end15.do.body5_crit_edge, %do.body5.preheader
  %ptr.0 = phi ptr [ %ptr.1, %if.end15.do.body5_crit_edge ], [ %3, %do.body5.preheader ]
  %add.ptr6 = getelementptr i8, ptr %ptr.0, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #12, !srcloc !228
  %add.ptr.i = getelementptr i8, ptr %ptr.0, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !228
  %10 = call i32 @llvm.bswap.i32(i32 %8)
  %11 = zext i32 %10 to i64
  %12 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 2), align 8
  %add.ptr8 = getelementptr %struct.redist_region, ptr %12, i32 %i.057
  %call9 = tail call i32 %fn(ptr noundef %add.ptr8, ptr noundef %ptr.0) #12, !callees !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %do.body5.cleanup33_crit_edge, label %if.end11

do.body5.cleanup33_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

if.end11:                                         ; preds = %do.body5
  %13 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 2), align 8
  %single_redist = getelementptr %struct.redist_region, ptr %13, i32 %i.057, i32 2
  %14 = ptrtoint ptr %single_redist to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %single_redist, align 4, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end15:                                         ; preds = %if.end11
  %16 = load i64, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 5), align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool16.not = icmp eq i64 %16, 0
  %idx.ext = trunc i64 %16 to i32
  %and20 = and i64 %11, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20)
  %tobool21.not = icmp eq i64 %and20, 0
  %spec.select.v = select i1 %tobool21.not, i32 131072, i32 262144
  %idx.ext.pn = select i1 %tobool16.not, i32 %spec.select.v, i32 %idx.ext
  %ptr.1 = getelementptr i8, ptr %ptr.0, i32 %idx.ext.pn
  %and27 = and i64 %11, 16
  %tobool28.not = icmp eq i64 %and27, 0
  br i1 %tobool28.not, label %if.end15.do.body5_crit_edge, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end15.do.body5_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %3) #15
  br label %cleanup33

for.inc:                                          ; preds = %if.end15.for.inc_crit_edge, %if.end11.for.inc_crit_edge
  %inc = add nuw i32 %i.057, 1
  %17 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 6), align 8
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup33_crit_edge

for.inc.cleanup33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup33:                                        ; preds = %for.inc.cleanup33_crit_edge, %cleanup, %do.body5.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  %retval.2 = phi i32 [ -19, %cleanup ], [ -19, %entry.cleanup33_crit_edge ], [ 0, %do.body5.cleanup33_crit_edge ], [ -19, %for.inc.cleanup33_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__gic_update_rdist_properties(ptr nocapture noundef readnone %region, ptr noundef %ptr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptr, i32 8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !228
  %add.ptr.i = getelementptr i8, ptr %ptr, i32 12
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !228
  %2 = call i32 @llvm.bswap.i32(i32 %0)
  %3 = zext i32 %2 to i64
  %4 = and i64 %3, 130
  call void @__sanitizer_cov_trace_const_cmp8(i64 130, i64 %4)
  %.not = icmp eq i64 %4, 130
  br i1 %.not, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then:                                          ; preds = %entry
  %add.ptr4 = getelementptr i8, ptr %ptr, i32 131192
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #12, !srcloc !228
  %add.ptr.i146 = getelementptr i8, ptr %ptr, i32 131196
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #12, !srcloc !228
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then8:                                         ; preds = %if.then
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #12, !srcloc !228
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not.i = icmp sgt i32 %9, -1
  br i1 %tobool.not.i, label %if.then8.gicr_write_vpendbaser.exit_crit_edge, label %if.then.i

if.then8.gicr_write_vpendbaser.exit_crit_edge:    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %gicr_write_vpendbaser.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %and3.i = and i32 %9, 2147483647
  %10 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 %10) #12, !srcloc !241
  br label %gicr_write_vpendbaser.exit

gicr_write_vpendbaser.exit:                       ; preds = %if.then.i, %if.then8.gicr_write_vpendbaser.exit_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #12, !srcloc !241
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 32) #12, !srcloc !241
  br label %if.end

if.end:                                           ; preds = %gicr_write_vpendbaser.exit, %if.then.if.end_crit_edge
  %add.ptr12 = getelementptr i8, ptr %ptr, i32 131184
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #12, !srcloc !228
  %add.ptr.i148 = getelementptr i8, ptr %ptr, i32 131188
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #12, !srcloc !228
  %13 = and i32 %12, -129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %11) #12, !srcloc !241
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %13) #12, !srcloc !241
  br label %if.end17

if.end17:                                         ; preds = %if.end, %entry.if.end17_crit_edge
  %14 = trunc i32 %2 to i8
  %15 = lshr i8 %14, 1
  %16 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 7), align 4, !range !232
  %and22 = and i8 %15, %16
  store i8 %and22, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 7), align 4
  %17 = lshr i32 %2, 7
  %18 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 8), align 1, !range !232
  %19 = zext i8 %18 to i32
  %and32 = and i32 %17, %19
  %20 = trunc i32 %and32 to i8
  store i8 %20, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 8), align 1
  %21 = lshr i32 %2, 3
  %or = or i32 %and32, %21
  %22 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 9), align 2, !range !232
  %23 = trunc i32 %or to i8
  %24 = and i8 %22, %23
  store i8 %24, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 9), align 2
  %25 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 10), align 1, !range !232
  %26 = lshr i64 %3, 2
  %27 = trunc i64 %26 to i8
  %28 = and i8 %25, %27
  store i8 %28, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 10), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool59.not = icmp ne i8 %20, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and22)
  %tobool61.not = icmp eq i8 %and22, 0
  %or.cond150 = select i1 %tobool59.not, i1 %tobool61.not, i1 false
  br i1 %or.cond150, label %land.rhs71, label %if.end17.if.end113_crit_edge

if.end17.if.end113_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

land.rhs71:                                       ; preds = %if.end17
  %.b144 = load i1, ptr @__gic_update_rdist_properties.__already_done, align 1
  br i1 %.b144, label %land.rhs71.if.then112_crit_edge, label %if.then81, !prof !233

land.rhs71.if.then112_crit_edge:                  ; preds = %land.rhs71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112

if.then81:                                        ; preds = %land.rhs71
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__gic_update_rdist_properties.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 948, i32 noundef 9, ptr noundef null) #12
  br label %if.then112

if.then112:                                       ; preds = %if.then81, %land.rhs71.if.then112_crit_edge
  store i8 0, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 9), align 2
  store i8 0, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 7), align 4
  store i8 0, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3, i32 8), align 1
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end17.if.end113_crit_edge
  %29 = lshr i32 %2, 27
  %.off = add nsw i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %mul = shl nuw nsw i32 %29, 5
  %add = or i32 %mul, 16
  %__nr_ppis.0 = select i1 %switch, i32 %add, i32 16
  %30 = load i32, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %__nr_ppis.0, i32 %30)
  store i32 %31, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 9), align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gic_enable_redist(i1 noundef zeroext %enable) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 7), align 8
  %and = and i64 %0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %rd_base = getelementptr inbounds %struct.anon.71, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %rd_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rd_base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !228
  %13 = and i32 %12, -33554433
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %masksel = select i1 %enable, i32 0, i32 2
  %val.0 = or i32 %14, %masksel
  %15 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #12, !srcloc !241
  br i1 %enable, label %do.body.while.body.preheader_crit_edge, label %if.then10

do.body.while.body.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

if.then10:                                        ; preds = %do.body
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !228
  %17 = and i32 %16, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16.not = icmp eq i32 %17, 0
  br i1 %tobool16.not, label %if.then10.cleanup_crit_edge, label %if.then10.while.body.preheader_crit_edge

if.then10.while.body.preheader_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.preheader:                             ; preds = %if.then10.while.body.preheader_crit_edge, %do.body.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %do.end36.while.body_crit_edge, %while.body.preheader
  %dec68 = phi i32 [ %dec, %do.end36.while.body_crit_edge ], [ 999999, %while.body.preheader ]
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !228
  %19 = and i32 %18, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  %tobool29.not = xor i1 %20, %enable
  br i1 %tobool29.not, label %do.end36, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end36:                                         ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !250
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !251
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #12
  %dec = add nsw i32 %dec68, -1
  %tobool20.not = icmp eq i32 %dec, 0
  br i1 %tobool20.not, label %if.then42.critedge, label %do.end36.while.body_crit_edge

do.end36.while.body_crit_edge:                    ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.then42.critedge:                               ; preds = %do.end36
  %call43 = tail call i32 @___ratelimit(ptr noundef nonnull @gic_enable_redist._rs, ptr noundef nonnull @__func__.gic_enable_redist) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then42.critedge.cleanup_crit_edge, label %do.end48

if.then42.critedge.cleanup_crit_edge:             ; preds = %if.then42.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end48:                                         ; preds = %if.then42.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %enable, ptr @.str.62, ptr @.str.63
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull %cond) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %if.then42.critedge.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_cpu_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gic_cpu_sys_reg_init() unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  %shr = zext i32 %7 to i64
  %8 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 5", "=r"() #12, !srcloc !252
  %and.i218 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i218)
  %tobool.not.i = icmp eq i32 %and.i218, 0
  br i1 %tobool.not.i, label %gic_enable_sre.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

gic_enable_sre.exit:                              ; preds = %entry
  %or.i = or i32 %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 5", "r"(i32 %or.i) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  %9 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 5", "=r"() #12, !srcloc !252
  %and2.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.i.not = icmp eq i32 %and2.i, 0
  br i1 %tobool3.i.not, label %do.end, label %gic_enable_sre.exit.if.end_crit_edge

gic_enable_sre.exit.if.end_crit_edge:             ; preds = %gic_enable_sre.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %gic_enable_sre.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %gic_enable_sre.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 4", "=r"() #12, !srcloc !242
  %and.i220 = lshr i32 %10, 8
  %shr.i = and i32 %and.i220, 7
  %11 = tail call i32 asm sideeffect "mrc p15, 0, $0, c4, c6, 0", "=r"() #12, !srcloc !255
  %12 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 4", "=r"() #12, !srcloc !242
  %and.i.i = lshr i32 %12, 8
  %shr.i.i = and i32 %and.i.i, 7
  %sub.i = xor i32 %shr.i.i, 7
  %shl.i = shl nuw nsw i32 1, %sub.i
  tail call void asm sideeffect "mcr p15, 0, $0, c4, c6, 0", "r"(i32 %shl.i) #12, !srcloc !256
  %13 = tail call i32 asm sideeffect "mrc p15, 0, $0, c4, c6, 0", "=r"() #12, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c4, c6, 0", "r"(i32 %11) #12, !srcloc !256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not = icmp eq i32 %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c4, c6, 0", "r"(i32 240) #12, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 3", "r"(i32 0) #12, !srcloc !258
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @supports_deactivate_key, i32 1), ptr blockaddress(@gic_cpu_sys_reg_init, %if.else101)) #12
          to label %if.then100 [label %if.else101], !srcloc !230

if.then100:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 4", "r"(i32 2) #12, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  br label %if.end102

if.else101:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 4", "r"(i32 0) #12, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  br label %if.end102

if.end102:                                        ; preds = %if.else101, %if.then100
  br i1 %cmp.i.not, label %if.end102.if.end107_crit_edge, label %if.then104

if.end102.if.end107_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then104:                                       ; preds = %if.end102
  %14 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %shr.i, label %if.then104.sw.epilog_crit_edge [
    i32 7, label %if.then104.sw.bb_crit_edge
    i32 6, label %if.then104.sw.bb_crit_edge227
    i32 5, label %if.then104.sw.bb105_crit_edge
    i32 4, label %if.then104.sw.bb106_crit_edge
    i32 3, label %if.then104.sw.bb106_crit_edge228
  ]

if.then104.sw.bb106_crit_edge228:                 ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb106

if.then104.sw.bb106_crit_edge:                    ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb106

if.then104.sw.bb105_crit_edge:                    ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb105

if.then104.sw.bb_crit_edge227:                    ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then104.sw.bb_crit_edge:                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then104.sw.epilog_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then104.sw.bb_crit_edge, %if.then104.sw.bb_crit_edge227
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c8, 4 | 3", "r"(i32 0) #12, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c8, 4 | 2", "r"(i32 0) #12, !srcloc !262
  br label %sw.bb105

sw.bb105:                                         ; preds = %sw.bb, %if.then104.sw.bb105_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c8, 4 | 1", "r"(i32 0) #12, !srcloc !263
  br label %sw.bb106

sw.bb106:                                         ; preds = %sw.bb105, %if.then104.sw.bb106_crit_edge, %if.then104.sw.bb106_crit_edge228
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c8, 4 | 0", "r"(i32 0) #12, !srcloc !264
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb106, %if.then104.sw.epilog_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  br label %if.end107

if.end107:                                        ; preds = %sw.epilog, %if.end102.if.end107_crit_edge
  %15 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %shr.i, label %if.end107.sw.epilog111_crit_edge [
    i32 7, label %if.end107.sw.bb108_crit_edge
    i32 6, label %if.end107.sw.bb108_crit_edge229
    i32 5, label %if.end107.sw.bb109_crit_edge
    i32 4, label %if.end107.sw.bb110_crit_edge
    i32 3, label %if.end107.sw.bb110_crit_edge230
  ]

if.end107.sw.bb110_crit_edge230:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb110

if.end107.sw.bb110_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb110

if.end107.sw.bb109_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb109

if.end107.sw.bb108_crit_edge229:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb108

if.end107.sw.bb108_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb108

if.end107.sw.epilog111_crit_edge:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog111

sw.bb108:                                         ; preds = %if.end107.sw.bb108_crit_edge, %if.end107.sw.bb108_crit_edge229
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c9, 3", "r"(i32 0) #12, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c9, 2", "r"(i32 0) #12, !srcloc !267
  br label %sw.bb109

sw.bb109:                                         ; preds = %sw.bb108, %if.end107.sw.bb109_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c9, 1", "r"(i32 0) #12, !srcloc !268
  br label %sw.bb110

sw.bb110:                                         ; preds = %sw.bb109, %if.end107.sw.bb110_crit_edge, %if.end107.sw.bb110_crit_edge230
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c9, 0", "r"(i32 0) #12, !srcloc !269
  br label %sw.epilog111

sw.epilog111:                                     ; preds = %sw.bb110, %if.end107.sw.epilog111_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 7", "r"(i32 1) #12, !srcloc !271
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !272
  %16 = tail call i32 asm sideeffect "mrc p15, 0, $0, c12, c12, 4", "=r"() #12, !srcloc !242
  %arrayidx124 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %17 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx124, align 4
  %add = add i32 %18, ptrtoint (ptr @has_rss to i32)
  %19 = inttoptr i32 %add to ptr
  %and113 = lshr i32 %16, 18
  %20 = trunc i32 %and113 to i8
  %21 = and i8 %20, 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %19, align 1
  %call126223 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call126223, i32 %23)
  %cmp224 = icmp ult i32 %call126223, %23
  br i1 %cmp224, label %sw.epilog111.for.body_crit_edge, label %sw.epilog111.for.end_crit_edge

sw.epilog111.for.end_crit_edge:                   ; preds = %sw.epilog111
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

sw.epilog111.for.body_crit_edge:                  ; preds = %sw.epilog111
  br label %for.body

for.body:                                         ; preds = %if.end167.for.body_crit_edge, %sw.epilog111.for.body_crit_edge
  %call126226 = phi i32 [ %call126, %if.end167.for.body_crit_edge ], [ %call126223, %sw.epilog111.for.body_crit_edge ]
  %need_rss.0225 = phi i64 [ %or, %if.end167.for.body_crit_edge ], [ %shr, %sw.epilog111.for.body_crit_edge ]
  %arrayidx135 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call126226
  %24 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx135, align 4
  %add136 = add i32 %25, ptrtoint (ptr @has_rss to i32)
  %26 = inttoptr i32 %add136 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool137.not = icmp eq i8 %28, 0
  br i1 %tobool137.not, label %for.body.land.end151_crit_edge, label %do.body140

for.body.land.end151_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end151

do.body140:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx124, align 4
  %add148 = add i32 %30, ptrtoint (ptr @has_rss to i32)
  %31 = inttoptr i32 %add148 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool149 = icmp ne i8 %33, 0
  br label %land.end151

land.end151:                                      ; preds = %do.body140, %for.body.land.end151_crit_edge
  %34 = phi i1 [ false, %for.body.land.end151_crit_edge ], [ %tobool149, %do.body140 ]
  %arrayidx153 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call126226
  %35 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx153, align 4
  %and154 = lshr i32 %36, 4
  %shr155 = and i32 %and154, 15
  %conv156 = zext i32 %shr155 to i64
  %or = or i64 %need_rss.0225, %conv156
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %tobool157.not = icmp eq i64 %or, 0
  %brmerge = select i1 %tobool157.not, i1 true, i1 %34
  br i1 %brmerge, label %land.end151.if.end167_crit_edge, label %do.end162

land.end151.if.end167_crit_edge:                  ; preds = %land.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

do.end162:                                        ; preds = %land.end151
  call void @__sanitizer_cov_trace_pc() #14
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %3, i32 noundef %5, i32 noundef %call126226, i32 noundef %36) #15
  br label %if.end167

if.end167:                                        ; preds = %do.end162, %land.end151.if.end167_crit_edge
  %call126 = tail call i32 @cpumask_next(i32 noundef %call126226, ptr noundef nonnull @__cpu_online_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call126, %37
  br i1 %cmp, label %if.end167.for.body_crit_edge, label %if.end167.for.end_crit_edge

if.end167.for.end_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end167.for.body_crit_edge:                     ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end167.for.end_crit_edge, %sw.epilog111.for.end_crit_edge
  %need_rss.0.lcssa = phi i64 [ %shr, %sw.epilog111.for.end_crit_edge ], [ %or, %if.end167.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %need_rss.0.lcssa)
  %tobool168.not = icmp eq i64 %need_rss.0.lcssa, 0
  br i1 %tobool168.not, label %for.end.if.end199_crit_edge, label %land.lhs.true169

for.end.if.end199_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199

land.lhs.true169:                                 ; preds = %for.end
  %38 = load i8, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 8), align 8, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool170.not = icmp eq i8 %38, 0
  br i1 %tobool170.not, label %land.end178, label %land.lhs.true169.if.end199_crit_edge

land.lhs.true169.if.end199_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199

land.end178:                                      ; preds = %land.lhs.true169
  %.b217 = load i1, ptr @gic_cpu_sys_reg_init.__already_done, align 1
  br i1 %.b217, label %land.end178.if.end199_crit_edge, label %if.then185, !prof !233

land.end178.if.end199_crit_edge:                  ; preds = %land.end178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199

if.then185:                                       ; preds = %land.end178
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gic_cpu_sys_reg_init.__already_done, align 1
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #15
  br label %if.end199

if.end199:                                        ; preds = %if.then185, %land.end178.if.end199_crit_edge, %land.lhs.true169.if.end199_crit_edge, %for.end.if.end199_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__gic_populate_rdist(ptr noundef %region, ptr noundef %ptr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !217) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %ptr, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !228
  %add.ptr.i = getelementptr i8, ptr %ptr, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !228
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %cmp = icmp eq i32 %8, %5
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %region, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx19 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx19, align 4
  %add = add i32 %16, %12
  %17 = inttoptr i32 %add to ptr
  tail call void @__raw_spin_lock_init(ptr noundef %17, ptr noundef nonnull @.str.58, ptr noundef nonnull @__gic_populate_rdist.__key, i16 noundef signext 2) #12
  %18 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 3), align 8
  %19 = ptrtoint ptr %18 to i32
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx31 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx31, align 4
  %add32 = add i32 %23, %19
  %24 = inttoptr i32 %add32 to ptr
  %rd_base = getelementptr inbounds %struct.anon.71, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %rd_base to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ptr, ptr %rd_base, align 4
  %phys_base = getelementptr inbounds %struct.redist_region, ptr %region, i32 0, i32 1
  %26 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phys_base, align 4
  %add34 = add i32 %sub.ptr.sub, %27
  %28 = load i32, ptr %cpu, align 4
  %arrayidx45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %30, %19
  %31 = inttoptr i32 %add46 to ptr
  %phys_base47 = getelementptr inbounds %struct.anon.71, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %phys_base47 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add34, ptr %phys_base47, align 4
  %33 = load i32, ptr %cpu, align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 2), align 8
  %sub.ptr.lhs.cast54 = ptrtoint ptr %region to i32
  %sub.ptr.rhs.cast55 = ptrtoint ptr %34 to i32
  %sub.ptr.sub56 = sub i32 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub56, 12
  %arrayidx66 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %35 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx66, align 4
  %add67 = add i32 %36, %19
  %37 = inttoptr i32 %add67 to ptr
  %phys_base68 = getelementptr inbounds %struct.anon.71, ptr %37, i32 0, i32 3
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %33, i32 noundef %5, i32 noundef %sub.ptr.div, ptr noundef %phys_base68) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_starting_cpu(i32 noundef %cpu) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @gic_cpu_init()
  %0 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !228
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %gic_dist_supports_lpis.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

gic_dist_supports_lpis.exit:                      ; preds = %entry
  %3 = load i8, ptr @gicv3_nolpi, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %tobool.not = icmp eq i8 %3, 1
  br i1 %tobool.not, label %gic_dist_supports_lpis.exit.if.end_crit_edge, label %if.then

gic_dist_supports_lpis.exit.if.end_crit_edge:     ; preds = %gic_dist_supports_lpis.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %gic_dist_supports_lpis.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @its_cpu_init() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %gic_dist_supports_lpis.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_smp_ipi_range(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_cpu_pm_notifier(ptr nocapture noundef readnone %self, i32 noundef %cmd, ptr nocapture noundef readnone %v) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %cmd, label %entry.if.end6_crit_edge [
    i32 2, label %if.then
    i32 0, label %land.lhs.true
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #12, !srcloc !228
  %3 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @gic_enable_redist(i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  tail call fastcc void @gic_cpu_sys_reg_init()
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 1), align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !228
  %6 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i8.not = icmp eq i32 %6, 0
  br i1 %tobool.i8.not, label %land.lhs.true.if.end6_crit_edge, label %if.then4

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c12, c12, 7", "r"(i32 0) #12, !srcloc !271
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !272
  tail call fastcc void @gic_enable_redist(i1 noundef zeroext false)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true.if.end6_crit_edge, %if.end, %entry.if.end6_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_cpu_node_to_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_fwspec_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @partition_create_desc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @partition_domain_translate(ptr nocapture noundef readnone %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #7 align 64 {
entry:
  %ppi_intid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppi_intid) #12
  %0 = ptrtoint ptr %ppi_intid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ppi_intid, align 4, !annotation !227
  %1 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 10), align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call ptr @of_find_node_by_phandle(i32 noundef %3) #12
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.end, label %if.end26, !prof !229

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1584, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %call27 = call i32 @gic_irq_domain_translate(ptr noundef %d, ptr noundef %fwspec, ptr noundef nonnull %ppi_intid, ptr noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end80, label %land.rhs

land.rhs:                                         ; preds = %if.end26
  %.b102 = load i1, ptr @partition_domain_translate.__already_done, align 1
  br i1 %.b102, label %land.rhs.cleanup_crit_edge, label %if.then43, !prof !233

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then43:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @partition_domain_translate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1588, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end80:                                         ; preds = %if.end26
  %4 = ptrtoint ptr %ppi_intid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ppi_intid, align 4
  %call.i = tail call fastcc i32 @__get_intid_range(i32 noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %switch.i = icmp eq i32 %call.i, 1
  %retval.0.v.i = select i1 %switch.i, i32 -16, i32 -1040
  %retval.0.i = add i32 %retval.0.v.i, %5
  %6 = load ptr, ptr getelementptr inbounds (%struct.gic_chip_data, ptr @gic_data, i32 0, i32 10), align 8
  %arrayidx82 = getelementptr ptr, ptr %6, i32 %retval.0.i
  %7 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx82, align 4
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 3
  %call84 = tail call i32 @partition_translate_id(ptr noundef %8, ptr noundef %fwnode.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp = icmp slt i32 %call84, 0
  br i1 %cmp, label %if.end80.cleanup_crit_edge, label %if.end86

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end86:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call84, ptr %hwirq, align 4
  %arrayidx88 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx88, align 4
  %and = and i32 %11, 15
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.end80.cleanup_crit_edge, %if.then43, %land.rhs.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end86 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then43 ], [ %call84, %if.end80.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppi_intid) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @partition_translate_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !84, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !102, !103, !104, !106, !108, !109, !111, !113, !115, !116, !118, !120, !121, !122, !123, !125, !126, !127, !128, !129, !130, !132, !133, !134, !135, !137, !139, !140, !141, !142, !144, !146, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !180, !182, !183, !184, !185, !186, !187, !189, !191, !193, !194, !195, !196, !198, !200, !201, !202, !204, !205, !206, !208, !209, !211, !213, !215}
!llvm.named.register.sp = !{!217}
!llvm.module.flags = !{!218, !219, !220, !221, !222, !223, !224, !225}
!llvm.ident = !{!226}

!0 = !{ptr @gic_pmr_sync, !1, !"gic_pmr_sync", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 97, i32 1}
!2 = !{ptr @__ksymtab_gic_pmr_sync, !3, !"__ksymtab_gic_pmr_sync", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 98, i32 1}
!4 = !{ptr @gic_nonsecure_priorities, !5, !"gic_nonsecure_priorities", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 100, i32 1}
!6 = !{ptr @__ksymtab_gic_nonsecure_priorities, !7, !"__ksymtab_gic_nonsecure_priorities", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 101, i32 1}
!8 = !{ptr @__setup_gicv3_nolpi_cfg, !9, !"__setup_gicv3_nolpi_cfg", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1105, i32 1}
!10 = !{ptr @__of_table_gic_v3, !11, !"__of_table_gic_v3", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 2039, i32 1}
!12 = !{ptr @__pcpu_unique_has_rss, !13, !"__pcpu_unique_has_rss", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 128, i32 8}
!14 = !{ptr @has_rss, !13, !"has_rss", i1 false, i1 false}
!15 = !{ptr @__setup_str_gicv3_nolpi_cfg, !9, !"__setup_str_gicv3_nolpi_cfg", i1 false, i1 false}
!16 = !{ptr @gicv3_nolpi, !17, !"gicv3_nolpi", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1099, i32 13}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1979, i32 3}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gic_of_init._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @gic_of_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1985, i32 3}
!26 = !{ptr @gic_of_init._entry.3, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @gic_of_init._entry_ptr.5, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1989, i32 33}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 2006, i32 4}
!32 = !{ptr @gic_of_init._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @gic_of_init._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 2013, i32 33}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1648, i32 11}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1649, i32 17}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1653, i32 11}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1659, i32 11}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1672, i32 11}
!46 = !{ptr @gic_quirks, !47, !"gic_quirks", i1 false, i1 false}
!47 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1646, i32 31}
!48 = !{ptr @gic_data, !49, !"gic_data", i1 false, i1 false}
!49 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 61, i32 29}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1757, i32 3}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @gic_init_bases._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @gic_init_bases._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1774, i32 2}
!57 = !{ptr @gic_init_bases._entry.18, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @gic_init_bases._entry_ptr.20, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1775, i32 2}
!61 = !{ptr @gic_init_bases._entry.21, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @gic_init_bases._entry_ptr.23, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1800, i32 2}
!65 = !{ptr @gic_init_bases._entry.24, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @gic_init_bases._entry_ptr.26, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1806, i32 4}
!71 = !{ptr @gic_init_bases._entry.29, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @gic_init_bases._entry_ptr.31, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @gic_irq_domain_ops, !74, !"gic_irq_domain_ops", i1 false, i1 false}
!74 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1563, i32 36}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1549, i32 6}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1334, i32 12}
!79 = !{ptr @gic_chip, !80, !"gic_chip", i1 false, i1 false}
!80 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1333, i32 24}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 216, i32 4}
!83 = !{ptr @gic_do_wait_for_rwp._rs, !82, !"_rs", i1 false, i1 false}
!84 = !{ptr @__func__.gic_do_wait_for_rwp, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @gic_do_wait_for_rwp._entry, !82, !"_entry", i1 false, i1 false}
!87 = !{ptr @gic_do_wait_for_rwp._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 606, i32 3}
!90 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @gic_set_type._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @gic_set_type._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 495, i32 3}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @gic_irq_nmi_setup._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @gic_irq_nmi_setup._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = distinct !{null, !99, !"ppi_nmi_refs", i1 false, i1 false}
!99 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 125, i32 20}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 532, i32 3}
!102 = !{ptr @gic_irq_nmi_teardown._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @gic_irq_nmi_teardown._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @gic_eoimode1_chip, !105, !"gic_eoimode1_chip", i1 false, i1 false}
!105 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1351, i32 24}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 732, i32 3}
!108 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 653, i32 3}
!111 = distinct !{null, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 668, i32 3}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../arch/arm/include/asm/arch_gicv3.h", i32 251, i32 2}
!115 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../arch/arm/include/asm/arch_gicv3.h", i32 257, i32 2}
!118 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 965, i32 2}
!120 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @gic_update_rdist_properties._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @gic_update_rdist_properties._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 967, i32 3}
!125 = !{ptr @gic_update_rdist_properties._entry.46, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @gic_update_rdist_properties._entry_ptr.48, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 847, i32 4}
!132 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @gic_iterate_rdists._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @gic_iterate_rdists._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 948, i32 6}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 815, i32 3}
!139 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @gic_dist_init._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @gic_dist_init._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1125, i32 2}
!144 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 912, i32 2}
!146 = !{ptr @__gic_populate_rdist.__key, !147, !"__key", i1 false, i1 false}
!147 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 891, i32 3}
!148 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 895, i32 3}
!151 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @__gic_populate_rdist._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @__gic_populate_rdist._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @gic_enable_redist._rs, !155, !"_rs", i1 false, i1 false}
!155 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 280, i32 3}
!156 = !{ptr @__func__.gic_enable_redist, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @gic_enable_redist._entry, !155, !"_entry", i1 false, i1 false}
!159 = !{ptr @gic_enable_redist._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 995, i32 3}
!164 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @gic_cpu_sys_reg_init._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @gic_cpu_sys_reg_init._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.67, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1083, i32 4}
!169 = !{ptr @gic_cpu_sys_reg_init._entry.66, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @gic_cpu_sys_reg_init._entry_ptr.68, !168, !"_entry_ptr", i1 false, i1 false}
!171 = distinct !{null, !172, !"__already_done", i1 false, i1 false}
!172 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1096, i32 3}
!173 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @gic_cpu_sys_reg_init._entry.69, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @gic_cpu_sys_reg_init._entry_ptr.71, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.72, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1237, i32 7}
!178 = !{ptr @gic_cpu_pm_notifier_block, !179, !"gic_cpu_pm_notifier_block", i1 false, i1 false}
!179 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1320, i32 30}
!180 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1703, i32 2}
!182 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @gic_enable_nmi_support._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @gic_enable_nmi_support._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = distinct !{null, !181, !"<string literal>", i1 false, i1 false}
!186 = distinct !{null, !181, !"<string literal>", i1 false, i1 false}
!187 = distinct !{null, !188, !"supports_pseudo_nmis", i1 false, i1 false}
!188 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 89, i32 8}
!189 = !{ptr @.str.78, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1856, i32 46}
!191 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1881, i32 3}
!193 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @gic_populate_ppi_partitions._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @gic_populate_ppi_partitions._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.81, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1884, i32 51}
!198 = !{ptr @.str.83, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1906, i32 4}
!200 = !{ptr @gic_populate_ppi_partitions._entry.82, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @gic_populate_ppi_partitions._entry_ptr.84, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.86, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1911, i32 3}
!204 = !{ptr @gic_populate_ppi_partitions._entry.85, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @gic_populate_ppi_partitions._entry_ptr.87, !203, !"_entry_ptr", i1 false, i1 false}
!206 = distinct !{null, !207, !"__already_done", i1 false, i1 false}
!207 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!208 = !{ptr @.str.88, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @partition_domain_ops, !210, !"partition_domain_ops", i1 false, i1 false}
!210 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1603, i32 36}
!211 = distinct !{null, !212, !"__already_done", i1 false, i1 false}
!212 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 1588, i32 6}
!213 = !{ptr @supports_deactivate_key, !214, !"supports_deactivate_key", i1 false, i1 false}
!214 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 62, i32 8}
!215 = !{ptr @gic_v3_kvm_info, !216, !"gic_v3_kvm_info", i1 false, i1 false}
!216 = !{!"../drivers/irqchip/irq-gic-v3.c", i32 127, i32 28}
!217 = !{!"sp"}
!218 = !{i32 1, !"wchar_size", i32 2}
!219 = !{i32 1, !"min_enum_size", i32 4}
!220 = !{i32 8, !"branch-target-enforcement", i32 0}
!221 = !{i32 8, !"sign-return-address", i32 0}
!222 = !{i32 8, !"sign-return-address-all", i32 0}
!223 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!224 = !{i32 7, !"uwtable", i32 1}
!225 = !{i32 7, !"frame-pointer", i32 2}
!226 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!227 = !{!"auto-init"}
!228 = !{i64 5972581}
!229 = !{!"branch_weights", i32 1, i32 2000}
!230 = !{i64 2149005264, i64 2149005269, i64 2149005282, i64 2149005326, i64 2149005360, i64 2149005381}
!231 = !{!"branch_weights", i32 4001, i32 4000000}
!232 = !{i8 0, i8 2}
!233 = !{!"branch_weights", i32 2000, i32 1}
!234 = !{i64 2154841333}
!235 = !{i64 2154841387}
!236 = !{i64 2154840113}
!237 = !{i64 2154840175}
!238 = !{i64 2154931245}
!239 = !{i64 2154840701}
!240 = !{i64 2154840763}
!241 = !{i64 5972163}
!242 = !{i64 2154842546}
!243 = !{ptr @gic_dist_wait_for_rwp, ptr @gic_redist_wait_for_rwp}
!244 = !{i64 2154885159}
!245 = !{i64 2154885001}
!246 = !{i64 2154984728}
!247 = !{i64 2154843611}
!248 = !{i64 2154984991}
!249 = !{ptr @__gic_populate_rdist, ptr @__gic_update_rdist_properties}
!250 = !{i64 2154889260}
!251 = !{i64 2154889102}
!252 = !{i64 2154844158}
!253 = !{i64 2154844654}
!254 = !{i64 2154844716}
!255 = !{i64 2154845780}
!256 = !{i64 2154846264}
!257 = !{i64 2154829401}
!258 = !{i64 2154845242}
!259 = !{i64 2154841914}
!260 = !{i64 2154841976}
!261 = !{i64 2154834380}
!262 = !{i64 2154833131}
!263 = !{i64 2154831882}
!264 = !{i64 2154830633}
!265 = !{i64 2154969521}
!266 = !{i64 2154839228}
!267 = !{i64 2154838019}
!268 = !{i64 2154836810}
!269 = !{i64 2154835601}
!270 = !{i64 2154969867}
!271 = !{i64 2154843042}
!272 = !{i64 2154843104}
