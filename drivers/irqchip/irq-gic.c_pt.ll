; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-gic.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gic_chip_data = type { %struct.irq_chip, %union.gic_base, %union.gic_base, ptr, ptr, i32, [32 x i32], [32 x i32], [64 x i32], [255 x i32], ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%union.gic_base = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.gic_quirk = type { ptr, ptr, ptr, i32, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gic_kvm_info = type { i32, %struct.resource, i32, i8, %struct.resource, i8, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@gic_data = internal global [2 x %struct.gic_chip_data] zeroinitializer, section ".data..read_mostly", align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/irqchip/irq-gic.c\00", [38 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@gic_cpu_map = internal unnamed_addr global [8 x i8] zeroinitializer, section ".data..read_mostly", align 1
@cpu_map_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@gic_dist_physaddr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__setup_str_gicv2_force_probe_cfg = internal constant [26 x i8] c"irqchip.gicv2_force_probe\00", section ".init.rodata", align 1
@__setup_gicv2_force_probe_cfg = internal global %struct.obs_kernel_param { ptr @__setup_str_gicv2_force_probe_cfg, ptr @gicv2_force_probe_cfg, i32 1 }, section ".init.setup", align 4
@gic_cnt = internal unnamed_addr global i32 0, section ".init.data", align 4
@__of_table_gic_400 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_arm11mp_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,arm11mp-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_arm1176jzf_dc_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,arm1176jzf-devchip-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_cortex_a15_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a15-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_cortex_a9_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a9-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_cortex_a7_gic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a7-gic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_msm_8660_qgic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-8660-qgic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_msm_qgic2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-qgic2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__of_table_pl390 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,pl390\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gic_of_init }, section "__irqchip_of_table", align 4
@__pcpu_unique_sgi_intid = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@sgi_intid = weak dso_local global i32 0, section ".data..percpu", align 4
@frankengic_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpu_map_lock\00", [19 x i8] zeroinitializer }, align 32
@supports_deactivate_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@__gic_init_bases._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 1266, ptr null, ptr null }, align 1
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016GIC: Using split EOI/Deactivate mode\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__gic_init_bases\00", [47 x i8] zeroinitializer }, align 32
@__gic_init_bases._entry_ptr = internal global ptr @__gic_init_bases._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GICv2\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GIC-%d\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"irqchip/arm/gic:starting\00", [39 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@gic_get_cpumask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\012GIC CPU mask not found - kernel will fail to boot.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gic_get_cpumask\00", [16 x i8] zeroinitializer }, align 32
@gic_get_cpumask._entry_ptr = internal global ptr @gic_get_cpumask._entry, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@gicv2_force_probe = internal global { i8, [31 x i8] } zeroinitializer, align 32
@gic_chip = internal constant { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_mask_irq, ptr null, ptr @gic_unmask_irq, ptr @gic_eoi_irq, ptr null, ptr @gic_retrigger, ptr @gic_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_irq_get_irqchip_state, ptr @gic_irq_set_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, i32 21 }, [56 x i8] zeroinitializer }, align 32
@gic_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014GIC: PPI%d is secure or misconfigured\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gic_set_type\00", [19 x i8] zeroinitializer }, align 32
@gic_set_type._entry_ptr = internal global ptr @gic_set_type._entry, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@needs_rmw_access = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@rmw_writeb.rmw_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmw_lock\00", [23 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to map gic dist registers\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to map gic cpu registers\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu-offset\00", [21 x i8] zeroinitializer }, align 32
@gic_quirks = internal constant { [2 x %struct.gic_quirk], [56 x i8] } { [2 x %struct.gic_quirk] [%struct.gic_quirk { ptr @.str.18, ptr @.str.19, ptr @gic_enable_rmw_access, i32 0, i32 0 }, %struct.gic_quirk zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"broken byte access\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"arm,pl390\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"renesas,emev2\00", [18 x i8] zeroinitializer }, align 32
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@gic_irq_domain_hierarchy_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gic_irq_domain_alloc, ptr @irq_domain_free_irqs_top, ptr null, ptr null, ptr @gic_irq_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Cannot allocate irq_descs @ IRQ16, assuming pre-allocated\0A\00", [37 x i8] zeroinitializer }, align 32
@gic_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @gic_irq_domain_map, ptr @gic_irq_domain_unmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@irqchip_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@gic_notifier_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @gic_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@gic_check_eoimode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014GIC: GICv2 detected, but range too small and irqchip.gicv2_force_probe not set\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gic_check_eoimode\00", [46 x i8] zeroinitializer }, align 32
@gic_check_eoimode._entry_ptr = internal global ptr @gic_check_eoimode._entry, section ".printk_index", align 4
@gic_check_eoimode._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str, i32 1356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014GIC: GICv2 at %pa, but range is too small (broken DT?), assuming 8kB\0A\00", [56 x i8] zeroinitializer }, align 32
@gic_check_eoimode._entry_ptr.27 = internal global ptr @gic_check_eoimode._entry.25, section ".printk_index", align 4
@gic_check_eoimode._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str, i32 1373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014GIC: Aliased GICv2 at %pa, trying to find the canonical range over 128kB\0A\00", [52 x i8] zeroinitializer }, align 32
@gic_check_eoimode._entry_ptr.30 = internal global ptr @gic_check_eoimode._entry.28, section ".printk_index", align 4
@gic_check_eoimode._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str, i32 1396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014GIC: Adjusting CPU interface base to %pa\0A\00", [52 x i8] zeroinitializer }, align 32
@gic_check_eoimode._entry_ptr.33 = internal global ptr @gic_check_eoimode._entry.31, section ".printk_index", align 4
@__boot_cpu_mode = external dso_local local_unnamed_addr global i32, align 4
@gic_init_physaddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016GIC physical location is %#lx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gic_init_physaddr\00", [46 x i8] zeroinitializer }, align 32
@gic_init_physaddr._entry_ptr = internal global ptr @gic_init_physaddr._entry, section ".printk_index", align 4
@gic_v2_kvm_info = internal global %struct.gic_kvm_info zeroinitializer, section ".init.data", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 561, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"cpu_map_lock\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"gic_dist_physaddr\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1000, i32 22 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"frankengic_key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 129, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 90, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant [24 x i8] c"supports_deactivate_key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 120, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1266, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1270, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1273, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 866, i32 7 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 434, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"gicv2_force_probe\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1316, i32 13 }
@___asan_gen_.86 = private unnamed_addr constant [9 x i8] c"gic_chip\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 400, i32 30 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 311, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"needs_rmw_access\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 110, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [9 x i8] c"rmw_lock\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 781, i32 9 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1432, i32 6 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1436, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1439, i32 33 }
@___asan_gen_.116 = private unnamed_addr constant [11 x i8] c"gic_quirks\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1417, i32 31 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1419, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1420, i32 17 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1409, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant [29 x i8] c"gic_irq_domain_hierarchy_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1119, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1213, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [19 x i8] c"gic_irq_domain_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1125, i32 36 }
@___asan_gen_.137 = private unnamed_addr constant [19 x i8] c"gic_notifier_block\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 738, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1342, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1355, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1372, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1395, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [29 x i8] c"../drivers/irqchip/irq-gic.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1014, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__gic_init_bases._entry, ptr @__gic_init_bases._entry_ptr, ptr @__of_table_arm1176jzf_dc_gic, ptr @__of_table_arm11mp_gic, ptr @__of_table_cortex_a15_gic, ptr @__of_table_cortex_a7_gic, ptr @__of_table_cortex_a9_gic, ptr @__of_table_gic_400, ptr @__of_table_msm_8660_qgic, ptr @__of_table_msm_qgic2, ptr @__of_table_pl390, ptr @__setup_gicv2_force_probe_cfg, ptr @gic_check_eoimode._entry, ptr @gic_check_eoimode._entry.25, ptr @gic_check_eoimode._entry.28, ptr @gic_check_eoimode._entry.31, ptr @gic_check_eoimode._entry_ptr, ptr @gic_check_eoimode._entry_ptr.27, ptr @gic_check_eoimode._entry_ptr.30, ptr @gic_check_eoimode._entry_ptr.33, ptr @gic_get_cpumask._entry, ptr @gic_get_cpumask._entry_ptr, ptr @gic_init_physaddr._entry, ptr @gic_init_physaddr._entry_ptr, ptr @gic_set_type._entry, ptr @gic_set_type._entry_ptr, ptr @.str, ptr @cpu_map_lock, ptr @gic_dist_physaddr, ptr @frankengic_key, ptr @.str.2, ptr @supports_deactivate_key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @gicv2_force_probe, ptr @gic_chip, ptr @.str.11, ptr @.str.12, ptr @needs_rmw_access, ptr @rmw_writeb.rmw_lock, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @gic_quirks, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @gic_irq_domain_hierarchy_ops, ptr @.str.22, ptr @gic_irq_domain_ops, ptr @gic_notifier_block, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_map_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_dist_physaddr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frankengic_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supports_deactivate_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_get_cpumask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2_force_probe to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @needs_rmw_access to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmw_writeb.rmw_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_quirks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_irq_domain_hierarchy_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_notifier_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_check_eoimode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_check_eoimode._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_check_eoimode._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_check_eoimode._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_init_physaddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_cascade_irq(i32 noundef %gic_nr, i32 noundef %irq) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %gic_nr)
  %cmp = icmp ugt i32 %gic_nr, 1
  br i1 %cmp, label %do.body2, label %do.end5, !prof !129

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-gic.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #13, !srcloc !130
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 %gic_nr
  tail call void @irq_set_chained_handler_and_data(i32 noundef %irq, ptr noundef nonnull @gic_handle_cascade_irq, ptr noundef %arrayidx) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_handle_cascade_irq(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #13
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #13
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %11(ptr noundef %irq_data4.i) #13
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %cpu_base = getelementptr inbounds %struct.gic_chip_data, ptr %1, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_handle_cascade_irq, %if.then.i)) #13
          to label %__get_base.exit [label %if.then.i], !srcloc !131

if.then.i:                                        ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %cpu_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_base, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %20, %14
  %21 = inttoptr i32 %add.i to ptr
  br label %__get_base.exit

__get_base.exit:                                  ; preds = %if.then.i, %chained_irq_enter.exit
  %retval.0.in.i = phi ptr [ %21, %if.then.i ], [ %cpu_base, %chained_irq_enter.exit ]
  %22 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !132
  %24 = and i32 %23, -16580608
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16580608, i32 %24)
  %cmp = icmp eq i32 %24, -16580608
  br i1 %cmp, label %__get_base.exit.out_crit_edge, label %if.end

__get_base.exit.out_crit_edge:                    ; preds = %__get_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %__get_base.exit
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  %domain = getelementptr inbounds %struct.gic_chip_data, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %domain, align 4
  %call4 = tail call i32 @generic_handle_domain_irq(ptr noundef %27, i32 noundef %25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.then7, !prof !134

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @handle_bad_irq(ptr noundef %desc) #13
  br label %out

out:                                              ; preds = %if.then7, %if.end.out_crit_edge, %__get_base.exit.out_crit_edge
  %28 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i17 = icmp eq ptr %29, null
  br i1 %tobool.not.i17, label %if.else.i18, label %out.chained_irq_exit.exit_crit_edge

out.chained_irq_exit.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %chained_irq_exit.exit

if.else.i18:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %30 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i18, %out.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %31, %if.else.i18 ], [ %29, %out.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gic_cpu_if_down(i32 noundef %gic_nr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %gic_nr)
  %cmp = icmp ugt i32 %gic_nr, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpu_base1 = getelementptr [2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 %gic_nr, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_cpu_if_down, %if.then.i)) #13
          to label %__get_base.exit [label %if.then.i], !srcloc !131

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %cpu_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_base1, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %2
  %9 = inttoptr i32 %add.i to ptr
  br label %__get_base.exit

__get_base.exit:                                  ; preds = %if.then.i, %if.end
  %retval.0.in.i = phi ptr [ %9, %if.then.i ], [ %cpu_base1, %if.end ]
  %10 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i) #13, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  %12 = and i32 %11, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i, i32 %12) #13, !srcloc !136
  br label %cleanup

cleanup:                                          ; preds = %__get_base.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__get_base.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_dist_save(ptr noundef %gic) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gic, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !129

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 561, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %gic_irqs24 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 14
  %0 = ptrtoint ptr %gic_irqs24 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gic_irqs24, align 4
  %dist_base25 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_dist_save, %if.then.i)) #13
          to label %__get_base.exit [label %if.then.i], !srcloc !131

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %dist_base25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dist_base25, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, %4
  %11 = inttoptr i32 %add.i to ptr
  br label %__get_base.exit

__get_base.exit:                                  ; preds = %if.then.i, %if.end23
  %retval.0.in.i = phi ptr [ %11, %if.then.i ], [ %dist_base25, %if.end23 ]
  %12 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %tobool26.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool26.not, label %__get_base.exit.cleanup_crit_edge, label %for.cond.preheader

__get_base.exit.cleanup_crit_edge:                ; preds = %__get_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %__get_base.exit
  %sub = add i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp114.not = icmp ult i32 %sub, 16
  br i1 %cmp114.not, label %for.cond.preheader.for.cond32.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond32.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond32.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div111 = lshr i32 %sub, 4
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 3072
  br label %for.body

for.cond32.preheader:                             ; preds = %for.body.for.cond32.preheader_crit_edge, %for.cond.preheader.for.cond32.preheader_crit_edge
  %sub34 = add i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub34)
  %cmp36116.not = icmp ult i32 %sub34, 4
  br i1 %cmp36116.not, label %for.cond32.preheader.cleanup_crit_edge, label %for.body37.lr.ph

for.cond32.preheader.cleanup_crit_edge:           ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body37.lr.ph:                                 ; preds = %for.cond32.preheader
  %div35112 = lshr i32 %sub34, 2
  %add.ptr39 = getelementptr i8, ptr %retval.0.i, i32 2048
  br label %for.body37

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0115 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.0115, 2
  %add.ptr29 = getelementptr i8, ptr %add.ptr, i32 %mul
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #13, !srcloc !132
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %arrayidx = getelementptr %struct.gic_chip_data, ptr %gic, i32 0, i32 8, i32 %i.0115
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0115, 1
  %exitcond.not = icmp eq i32 %inc, %div111
  br i1 %exitcond.not, label %for.body.for.cond32.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.cond32.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond32.preheader

for.cond48.preheader:                             ; preds = %for.body37
  %sub50 = add i32 %1, 31
  %div51113 = lshr i32 %sub50, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub50)
  %cmp52118.not = icmp ult i32 %sub50, 32
  br i1 %cmp52118.not, label %for.cond48.preheader.cleanup_crit_edge, label %for.body53.lr.ph

for.cond48.preheader.cleanup_crit_edge:           ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body53.lr.ph:                                 ; preds = %for.cond48.preheader
  %add.ptr55 = getelementptr i8, ptr %retval.0.i, i32 256
  %umax124 = call i32 @llvm.umax.i32(i32 %div51113, i32 1)
  br label %for.body53

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.body37.lr.ph
  %i.1117 = phi i32 [ 0, %for.body37.lr.ph ], [ %inc46, %for.body37.for.body37_crit_edge ]
  %mul40 = shl i32 %i.1117, 2
  %add.ptr41 = getelementptr i8, ptr %add.ptr39, i32 %mul40
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #13, !srcloc !132
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %arrayidx44 = getelementptr %struct.gic_chip_data, ptr %gic, i32 0, i32 9, i32 %i.1117
  %18 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx44, align 4
  %inc46 = add nuw nsw i32 %i.1117, 1
  %exitcond123.not = icmp eq i32 %inc46, %div35112
  br i1 %exitcond123.not, label %for.cond48.preheader, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body37

for.cond64.preheader:                             ; preds = %for.body53
  br i1 %cmp52118.not, label %for.cond64.preheader.cleanup_crit_edge, label %for.body69.lr.ph

for.cond64.preheader.cleanup_crit_edge:           ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body69.lr.ph:                                 ; preds = %for.cond64.preheader
  %add.ptr71 = getelementptr i8, ptr %retval.0.i, i32 768
  %umax126 = call i32 @llvm.umax.i32(i32 %div51113, i32 1)
  br label %for.body69

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %for.body53.lr.ph
  %i.2119 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc62, %for.body53.for.body53_crit_edge ]
  %mul56 = shl i32 %i.2119, 2
  %add.ptr57 = getelementptr i8, ptr %add.ptr55, i32 %mul56
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #13, !srcloc !132
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %arrayidx60 = getelementptr %struct.gic_chip_data, ptr %gic, i32 0, i32 6, i32 %i.2119
  %21 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx60, align 4
  %inc62 = add nuw nsw i32 %i.2119, 1
  %exitcond125.not = icmp eq i32 %inc62, %umax124
  br i1 %exitcond125.not, label %for.cond64.preheader, label %for.body53.for.body53_crit_edge

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body53

for.body69:                                       ; preds = %for.body69.for.body69_crit_edge, %for.body69.lr.ph
  %i.3121 = phi i32 [ 0, %for.body69.lr.ph ], [ %inc78, %for.body69.for.body69_crit_edge ]
  %mul72 = shl i32 %i.3121, 2
  %add.ptr73 = getelementptr i8, ptr %add.ptr71, i32 %mul72
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #13, !srcloc !132
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %arrayidx76 = getelementptr %struct.gic_chip_data, ptr %gic, i32 0, i32 7, i32 %i.3121
  %24 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx76, align 4
  %inc78 = add nuw nsw i32 %i.3121, 1
  %exitcond127.not = icmp eq i32 %inc78, %umax126
  br i1 %exitcond127.not, label %for.body69.cleanup_crit_edge, label %for.body69.for.body69_crit_edge

for.body69.for.body69_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body69

for.body69.cleanup_crit_edge:                     ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body69.cleanup_crit_edge, %for.cond64.preheader.cleanup_crit_edge, %for.cond48.preheader.cleanup_crit_edge, %for.cond32.preheader.cleanup_crit_edge, %__get_base.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_dist_restore(ptr noundef readonly %gic) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gic, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !129

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 600, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %gic_irqs24 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 14
  %0 = ptrtoint ptr %gic_irqs24 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gic_irqs24, align 4
  %dist_base25 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_dist_restore, %if.then.i)) #13
          to label %__get_base.exit [label %if.then.i], !srcloc !131

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %dist_base25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dist_base25, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, %4
  %11 = inttoptr i32 %add.i to ptr
  br label %__get_base.exit

__get_base.exit:                                  ; preds = %if.then.i, %if.end23
  %retval.0.in.i = phi ptr [ %11, %if.then.i ], [ %dist_base25, %if.end23 ]
  %12 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %tobool26.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool26.not, label %__get_base.exit.cleanup_crit_edge, label %if.end28

__get_base.exit.cleanup_crit_edge:                ; preds = %__get_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28:                                         ; preds = %__get_base.exit
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %retval.0.i, i32 0) #13, !srcloc !136
  %sub = add i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp134.not = icmp ult i32 %sub, 16
  br i1 %cmp134.not, label %if.end28.for.cond31.preheader_crit_edge, label %for.body.lr.ph

if.end28.for.cond31.preheader_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond31.preheader

for.body.lr.ph:                                   ; preds = %if.end28
  %div131 = lshr i32 %sub, 4
  %add.ptr29 = getelementptr i8, ptr %retval.0.i, i32 3072
  br label %for.body

for.cond31.preheader:                             ; preds = %for.body.for.cond31.preheader_crit_edge, %if.end28.for.cond31.preheader_crit_edge
  %sub33 = add i32 %1, 3
  %div34132 = lshr i32 %sub33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub33)
  %cmp35136.not = icmp ult i32 %sub33, 4
  br i1 %cmp35136.not, label %for.cond31.preheader.for.end87_crit_edge, label %for.body36.lr.ph

for.cond31.preheader.for.end87_crit_edge:         ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end87

for.body36.lr.ph:                                 ; preds = %for.cond31.preheader
  %add.ptr37 = getelementptr i8, ptr %retval.0.i, i32 1024
  %umax145 = call i32 @llvm.umax.i32(i32 %div34132, i32 1)
  br label %for.body36

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0135 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gic_chip_data, ptr %gic, i32 0, i32 8, i32 %i.0135
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %mul = shl i32 %i.0135, 2
  %add.ptr30 = getelementptr i8, ptr %add.ptr29, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %15) #13, !srcloc !136
  %inc = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, %div131
  br i1 %exitcond.not, label %for.body.for.cond31.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.cond31.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond31.preheader

for.cond43.preheader:                             ; preds = %for.body36
  br i1 %cmp35136.not, label %for.cond43.preheader.for.end87_crit_edge, label %for.body48.lr.ph

for.cond43.preheader.for.end87_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end87

for.body48.lr.ph:                                 ; preds = %for.cond43.preheader
  %add.ptr50 = getelementptr i8, ptr %retval.0.i, i32 2048
  %umax147 = call i32 @llvm.umax.i32(i32 %div34132, i32 1)
  br label %for.body48

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.body36.lr.ph
  %i.1137 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc41, %for.body36.for.body36_crit_edge ]
  %mul38 = shl i32 %i.1137, 2
  %add.ptr39 = getelementptr i8, ptr %add.ptr37, i32 %mul38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 -1600085856) #13, !srcloc !136
  %inc41 = add nuw nsw i32 %i.1137, 1
  %exitcond146.not = icmp eq i32 %inc41, %umax145
  br i1 %exitcond146.not, label %for.cond43.preheader, label %for.body36.for.body36_crit_edge

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body36

for.cond56.preheader:                             ; preds = %for.body48
  %sub58 = add i32 %1, 31
  %div59133 = lshr i32 %sub58, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub58)
  %cmp60140.not = icmp ult i32 %sub58, 32
  br i1 %cmp60140.not, label %for.cond56.preheader.for.end87_crit_edge, label %for.body61.lr.ph

for.cond56.preheader.for.end87_crit_edge:         ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end87

for.body61.lr.ph:                                 ; preds = %for.cond56.preheader
  %add.ptr62 = getelementptr i8, ptr %retval.0.i, i32 384
  %add.ptr66 = getelementptr i8, ptr %retval.0.i, i32 256
  %umax149 = call i32 @llvm.umax.i32(i32 %div59133, i32 1)
  br label %for.body61

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %for.body48.lr.ph
  %i.2139 = phi i32 [ 0, %for.body48.lr.ph ], [ %inc54, %for.body48.for.body48_crit_edge ]
  %arrayidx49 = getelementptr %struct.gic_chip_data, ptr %gic, i32 0, i32 9, i32 %i.2139
  %16 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx49, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %mul51 = shl i32 %i.2139, 2
  %add.ptr52 = getelementptr i8, ptr %add.ptr50, i32 %mul51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %18) #13, !srcloc !136
  %inc54 = add nuw nsw i32 %i.2139, 1
  %exitcond148.not = icmp eq i32 %inc54, %umax147
  br i1 %exitcond148.not, label %for.cond56.preheader, label %for.body48.for.body48_crit_edge

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body48

for.cond72.preheader:                             ; preds = %for.body61
  br i1 %cmp60140.not, label %for.cond72.preheader.for.end87_crit_edge, label %for.body77.lr.ph

for.cond72.preheader.for.end87_crit_edge:         ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end87

for.body77.lr.ph:                                 ; preds = %for.cond72.preheader
  %add.ptr78 = getelementptr i8, ptr %retval.0.i, i32 896
  %add.ptr82 = getelementptr i8, ptr %retval.0.i, i32 768
  %umax151 = call i32 @llvm.umax.i32(i32 %div59133, i32 1)
  br label %for.body77

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %for.body61.lr.ph
  %i.3141 = phi i32 [ 0, %for.body61.lr.ph ], [ %inc70, %for.body61.for.body61_crit_edge ]
  %mul63 = shl i32 %i.3141, 2
  %add.ptr64 = getelementptr i8, ptr %add.ptr62, i32 %mul63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 -1) #13, !srcloc !136
  %arrayidx65 = getelementptr %struct.gic_chip_data, ptr %gic, i32 0, i32 6, i32 %i.3141
  %19 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx65, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add.ptr68 = getelementptr i8, ptr %add.ptr66, i32 %mul63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %21) #13, !srcloc !136
  %inc70 = add nuw nsw i32 %i.3141, 1
  %exitcond150.not = icmp eq i32 %inc70, %umax149
  br i1 %exitcond150.not, label %for.cond72.preheader, label %for.body61.for.body61_crit_edge

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body61

for.body77:                                       ; preds = %for.body77.for.body77_crit_edge, %for.body77.lr.ph
  %i.4144 = phi i32 [ 0, %for.body77.lr.ph ], [ %inc86, %for.body77.for.body77_crit_edge ]
  %mul79 = shl i32 %i.4144, 2
  %add.ptr80 = getelementptr i8, ptr %add.ptr78, i32 %mul79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 -1) #13, !srcloc !136
  %arrayidx81 = getelementptr %struct.gic_chip_data, ptr %gic, i32 0, i32 7, i32 %i.4144
  %22 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx81, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add.ptr84 = getelementptr i8, ptr %add.ptr82, i32 %mul79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %24) #13, !srcloc !136
  %inc86 = add nuw nsw i32 %i.4144, 1
  %exitcond152.not = icmp eq i32 %inc86, %umax151
  br i1 %exitcond152.not, label %for.body77.for.end87_crit_edge, label %for.body77.for.body77_crit_edge

for.body77.for.body77_crit_edge:                  ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body77

for.body77.for.end87_crit_edge:                   ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end87

for.end87:                                        ; preds = %for.body77.for.end87_crit_edge, %for.cond72.preheader.for.end87_crit_edge, %for.cond56.preheader.for.end87_crit_edge, %for.cond43.preheader.for.end87_crit_edge, %for.cond31.preheader.for.end87_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %retval.0.i, i32 16777216) #13, !srcloc !136
  br label %cleanup

cleanup:                                          ; preds = %for.end87, %__get_base.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_cpu_save(ptr noundef readonly %gic) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gic, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !129

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 647, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %dist_base24 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_cpu_save, %if.then.i)) #13
          to label %__get_base.exit [label %if.then.i], !srcloc !131

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %dist_base24 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dist_base24, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %2
  %9 = inttoptr i32 %add.i to ptr
  br label %__get_base.exit

__get_base.exit:                                  ; preds = %if.then.i, %if.end23
  %retval.0.in.i = phi ptr [ %9, %if.then.i ], [ %dist_base24, %if.end23 ]
  %10 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %cpu_base25 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_cpu_save, %if.then.i118)) #13
          to label %__get_base.exit121 [label %if.then.i118], !srcloc !131

if.then.i118:                                     ; preds = %__get_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %cpu_base25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_base25, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i114 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i114 to ptr
  %cpu.i115 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i115 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i115, align 4
  %arrayidx.i116 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i116, align 4
  %add.i117 = add i32 %19, %13
  %20 = inttoptr i32 %add.i117 to ptr
  br label %__get_base.exit121

__get_base.exit121:                               ; preds = %if.then.i118, %__get_base.exit
  %retval.0.in.i119 = phi ptr [ %20, %if.then.i118 ], [ %cpu_base25, %__get_base.exit ]
  %21 = ptrtoint ptr %retval.0.in.i119 to i32
  call void @__asan_load4_noabort(i32 %21)
  %retval.0.i120 = load ptr, ptr %retval.0.in.i119, align 4
  %tobool27.not = icmp eq ptr %retval.0.i, null
  %tobool28.not = icmp eq ptr %retval.0.i120, null
  %or.cond = select i1 %tobool27.not, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %__get_base.exit121.cleanup_crit_edge, label %do.body31

__get_base.exit121.cleanup_crit_edge:             ; preds = %__get_base.exit121
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body31:                                        ; preds = %__get_base.exit121
  call void @__sanitizer_cov_trace_pc() #15
  %saved_ppi_enable = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 10
  %22 = ptrtoint ptr %saved_ppi_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %saved_ppi_enable, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %add = add i32 %30, %24
  %31 = inttoptr i32 %add to ptr
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 256
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !132
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %31, align 4
  %saved_ppi_active = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 11
  %35 = ptrtoint ptr %saved_ppi_active to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %saved_ppi_active, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu, align 4
  %arrayidx50 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %41, %37
  %42 = inttoptr i32 %add51 to ptr
  %add.ptr56 = getelementptr i8, ptr %retval.0.i, i32 768
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #13, !srcloc !132
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %42, align 4
  %saved_ppi_conf = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 12
  %46 = ptrtoint ptr %saved_ppi_conf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %saved_ppi_conf, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu, align 4
  %arrayidx74 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx74, align 4
  %add75 = add i32 %52, %48
  %53 = inttoptr i32 %add75 to ptr
  %add.ptr80 = getelementptr i8, ptr %retval.0.i, i32 3072
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #13, !srcloc !132
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %53, align 4
  %add.ptr82.1 = getelementptr i8, ptr %retval.0.i, i32 3076
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.1) #13, !srcloc !132
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %arrayidx85.1 = getelementptr i32, ptr %53, i32 1
  %59 = ptrtoint ptr %arrayidx85.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx85.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body31, %__get_base.exit121.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_cpu_restore(ptr noundef readonly %gic) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gic, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !129

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 677, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %dist_base24 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_cpu_restore, %if.then.i)) #13
          to label %__get_base.exit [label %if.then.i], !srcloc !131

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %dist_base24 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dist_base24, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %2
  %9 = inttoptr i32 %add.i to ptr
  br label %__get_base.exit

__get_base.exit:                                  ; preds = %if.then.i, %if.end23
  %retval.0.in.i = phi ptr [ %9, %if.then.i ], [ %dist_base24, %if.end23 ]
  %10 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %cpu_base25 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_cpu_restore, %if.then.i136)) #13
          to label %__get_base.exit139 [label %if.then.i136], !srcloc !131

if.then.i136:                                     ; preds = %__get_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %cpu_base25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_base25, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i132 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i132 to ptr
  %cpu.i133 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i133 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i133, align 4
  %arrayidx.i134 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i134 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i134, align 4
  %add.i135 = add i32 %19, %13
  %20 = inttoptr i32 %add.i135 to ptr
  br label %__get_base.exit139

__get_base.exit139:                               ; preds = %if.then.i136, %__get_base.exit
  %retval.0.in.i137 = phi ptr [ %20, %if.then.i136 ], [ %cpu_base25, %__get_base.exit ]
  %21 = ptrtoint ptr %retval.0.in.i137 to i32
  call void @__asan_load4_noabort(i32 %21)
  %retval.0.i138 = load ptr, ptr %retval.0.in.i137, align 4
  %tobool27.not = icmp eq ptr %retval.0.i, null
  %tobool28.not = icmp eq ptr %retval.0.i138, null
  %or.cond = select i1 %tobool27.not, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %__get_base.exit139.cleanup_crit_edge, label %do.body31

__get_base.exit139.cleanup_crit_edge:             ; preds = %__get_base.exit139
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body31:                                        ; preds = %__get_base.exit139
  %saved_ppi_enable = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 10
  %22 = ptrtoint ptr %saved_ppi_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %saved_ppi_enable, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %add = add i32 %30, %24
  %31 = inttoptr i32 %add to ptr
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #13, !srcloc !136
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %add.ptr39 = getelementptr i8, ptr %retval.0.i, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %34) #13, !srcloc !136
  %saved_ppi_active = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 11
  %35 = ptrtoint ptr %saved_ppi_active to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %saved_ppi_active, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu, align 4
  %arrayidx51 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %41, %37
  %42 = inttoptr i32 %add52 to ptr
  %add.ptr56 = getelementptr i8, ptr %retval.0.i, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 -1) #13, !srcloc !136
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %add.ptr60 = getelementptr i8, ptr %retval.0.i, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %45) #13, !srcloc !136
  %saved_ppi_conf = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 12
  %46 = ptrtoint ptr %saved_ppi_conf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %saved_ppi_conf, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu, align 4
  %arrayidx75 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx75, align 4
  %add76 = add i32 %52, %48
  %53 = inttoptr i32 %add76 to ptr
  %add.ptr81 = getelementptr i8, ptr %retval.0.i, i32 3072
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %56) #13, !srcloc !136
  %arrayidx80.1 = getelementptr i32, ptr %53, i32 1
  %57 = ptrtoint ptr %arrayidx80.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx80.1, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %add.ptr83.1 = getelementptr i8, ptr %retval.0.i, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.1, i32 %59) #13, !srcloc !136
  %add.ptr90 = getelementptr i8, ptr %retval.0.i, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 -1600085856) #13, !srcloc !136
  %add.ptr92.1 = getelementptr i8, ptr %retval.0.i, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.1, i32 -1600085856) #13, !srcloc !136
  %add.ptr92.2 = getelementptr i8, ptr %retval.0.i, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.2, i32 -1600085856) #13, !srcloc !136
  %add.ptr92.3 = getelementptr i8, ptr %retval.0.i, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.3, i32 -1600085856) #13, !srcloc !136
  %add.ptr92.4 = getelementptr i8, ptr %retval.0.i, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.4, i32 -1600085856) #13, !srcloc !136
  %add.ptr92.5 = getelementptr i8, ptr %retval.0.i, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.5, i32 -1600085856) #13, !srcloc !136
  %add.ptr92.6 = getelementptr i8, ptr %retval.0.i, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.6, i32 -1600085856) #13, !srcloc !136
  %add.ptr92.7 = getelementptr i8, ptr %retval.0.i, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.7, i32 -1600085856) #13, !srcloc !136
  %add.ptr96 = getelementptr i8, ptr %retval.0.i138, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 -268435456) #13, !srcloc !136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_cpu_restore, %if.then.i.i)) #13
          to label %__get_base.exit.i [label %if.then.i.i], !srcloc !131

if.then.i.i:                                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %cpu_base25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cpu_base25, align 4
  %62 = ptrtoint ptr %61 to i32
  %63 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %68, %62
  %69 = inttoptr i32 %add.i.i to ptr
  br label %__get_base.exit.i

__get_base.exit.i:                                ; preds = %if.then.i.i, %do.body31
  %retval.0.in.i.i = phi ptr [ %69, %if.then.i.i ], [ %cpu_base25, %do.body31 ]
  %70 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %retval.0.i24.i = load ptr, ptr %retval.0.in.i.i, align 4
  %cmp.i = icmp eq ptr %gic, @gic_data
  br i1 %cmp.i, label %land.lhs.true.i, label %__get_base.exit.i.if.end.i_crit_edge

__get_base.exit.i.if.end.i_crit_edge:             ; preds = %__get_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %__get_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @supports_deactivate_key, i32 1), ptr blockaddress(@gic_cpu_restore, %71)) #13
          to label %if.end.i [label %71], !srcloc !131

71:                                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %71, %land.lhs.true.i, %__get_base.exit.i.if.end.i_crit_edge
  %mode.0.i = phi i32 [ 1, %__get_base.exit.i.if.end.i_crit_edge ], [ 1, %71 ], [ 513, %land.lhs.true.i ]
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i24.i, i32 252
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !132
  %73 = and i32 %72, -15728896
  call void @__sanitizer_cov_trace_const_cmp4(i32 990118400, i32 %73)
  %cmp.i.i = icmp eq i32 %73, 990118400
  br i1 %cmp.i.i, label %for.cond.preheader.i, label %if.end.i.gic_cpu_if_up.exit_crit_edge

if.end.i.gic_cpu_if_up.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gic_cpu_if_up.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %retval.0.i24.i, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !136
  %add.ptr9.1.i = getelementptr i8, ptr %retval.0.i24.i, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.1.i, i32 0) #13, !srcloc !136
  %add.ptr9.2.i = getelementptr i8, ptr %retval.0.i24.i, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.2.i, i32 0) #13, !srcloc !136
  %add.ptr9.3.i = getelementptr i8, ptr %retval.0.i24.i, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.3.i, i32 0) #13, !srcloc !136
  br label %gic_cpu_if_up.exit

gic_cpu_if_up.exit:                               ; preds = %for.cond.preheader.i, %if.end.i.gic_cpu_if_up.exit_crit_edge
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i24.i) #13, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !137
  %75 = and i32 %74, -536805376
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #13
  %or15.i = or i32 %76, %mode.0.i
  %77 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i24.i, i32 %77) #13, !srcloc !136
  br label %cleanup

cleanup:                                          ; preds = %gic_cpu_if_up.exit, %__get_base.exit139.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_send_sgi(i32 noundef %cpu_id, i32 noundef %irq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cpu_id)
  %cmp = icmp ugt i32 %cpu_id, 7
  br i1 %cmp, label %do.body2, label %do.end5, !prof !129

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-gic.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 892, 0\0A.popsection", ""() #13, !srcloc !138
  unreachable

do.end5:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_send_sgi, %if.then.i)) #13
          to label %__get_base.exit [label %if.then.i], !srcloc !131

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, %1
  %8 = inttoptr i32 %add.i to ptr
  br label %__get_base.exit

__get_base.exit:                                  ; preds = %if.then.i, %do.end5
  %retval.0.in.i = phi ptr [ %8, %if.then.i ], [ getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), %do.end5 ]
  %shl6 = shl nuw nsw i32 65536, %cpu_id
  %or = or i32 %shl6, %irq
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #13, !srcloc !136
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gic_get_cpu_id(i32 noundef %cpu) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cpu)
  %cmp = icmp ugt i32 %cpu, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [8 x i8], ptr @gic_cpu_map, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %sub = add nuw nsw i32 %conv, 255
  %and = and i32 %sub, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %2 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #13, !range !139
  %spec.select = select i1 %tobool.not, i32 %2, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_migrate_target(i32 noundef %new_cpu_id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_migrate_target, %if.then.i)) #13
          to label %__get_base.exit [label %if.then.i], !srcloc !131

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = load ptr, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i to ptr
  br label %__get_base.exit

__get_base.exit:                                  ; preds = %if.then.i, %entry
  %retval.0.in.i = phi ptr [ %12, %if.then.i ], [ getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), %entry ]
  %13 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %tobool11.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool11.not, label %__get_base.exit.cleanup68_crit_edge, label %if.end13

__get_base.exit.cleanup68_crit_edge:              ; preds = %__get_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup68

if.end13:                                         ; preds = %__get_base.exit
  %14 = load i32, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 14), align 4
  %arrayidx16 = getelementptr [8 x i8], ptr @gic_cpu_map, i32 0, i32 %3
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16, align 1
  %conv = zext i8 %16 to i32
  %17 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #13, !range !139
  %shl = shl i32 16843009, %17
  %sub = sub i32 %17, %new_cpu_id
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpu_map_lock) #13
  %shl18 = shl nuw i32 1, %new_cpu_id
  %conv19 = trunc i32 %shl18 to i8
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv19, ptr %arrayidx16, align 1
  %sub21 = add i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %sub21)
  %cmp22112 = icmp ugt i32 %sub21, 35
  br i1 %cmp22112, label %for.body.lr.ph, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %div111 = lshr i32 %sub21, 2
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 2048
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0113 = phi i32 [ 8, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %i.0113, 2
  %add.ptr24 = getelementptr i8, ptr %add.ptr, i32 %mul
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #13, !srcloc !132
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %and26 = and i32 %20, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %for.body.for.inc_crit_edge, label %if.then28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %and29 = xor i32 %and26, %20
  %or.i = tail call i32 @llvm.fshr.i32(i32 %and26, i32 %and26, i32 %sub) #13
  %or = or i32 %and29, %or.i
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %21) #13, !srcloc !136
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, %div111
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end13.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cpu_map_lock) #13
  %add.ptr40 = getelementptr i8, ptr %retval.0.i, i32 3872
  %add.ptr47 = getelementptr i8, ptr %retval.0.i, i32 3856
  %add57 = add i32 %new_cpu_id, 16
  %shl58 = shl nuw i32 1, %add57
  %add.ptr60 = getelementptr i8, ptr %retval.0.i, i32 3840
  br label %for.body38

for.body38:                                       ; preds = %cleanup.for.body38_crit_edge, %for.end
  %i.1118 = phi i32 [ 0, %for.end ], [ %add66, %cleanup.for.body38_crit_edge ]
  %add.ptr41 = getelementptr i8, ptr %add.ptr40, i32 %i.1118
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #13, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool44.not = icmp eq i32 %22, 0
  br i1 %tobool44.not, label %for.body38.cleanup_crit_edge, label %for.body53.preheader

for.body38.cleanup_crit_edge:                     ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body53.preheader:                             ; preds = %for.body38
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %add.ptr48 = getelementptr i8, ptr %add.ptr47, i32 %i.1118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %22) #13, !srcloc !136
  %and54 = and i32 %23, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %for.body53.preheader.for.body53.1_crit_edge, label %if.then56

for.body53.preheader.for.body53.1_crit_edge:      ; preds = %for.body53.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body53.1

if.then56:                                        ; preds = %for.body53.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %or59 = or i32 %i.1118, %shl58
  %24 = tail call i32 @llvm.bswap.i32(i32 %or59)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %24) #13, !srcloc !136
  br label %for.body53.1

for.body53.1:                                     ; preds = %if.then56, %for.body53.preheader.for.body53.1_crit_edge
  %25 = and i32 %23, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool55.not.1 = icmp eq i32 %25, 0
  br i1 %tobool55.not.1, label %for.body53.1.if.end61.1_crit_edge, label %if.then56.1

for.body53.1.if.end61.1_crit_edge:                ; preds = %for.body53.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.1

if.then56.1:                                      ; preds = %for.body53.1
  call void @__sanitizer_cov_trace_pc() #15
  %inc63 = or i32 %i.1118, %shl58
  %or59.1 = or i32 %inc63, 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %or59.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %26) #13, !srcloc !136
  br label %if.end61.1

if.end61.1:                                       ; preds = %if.then56.1, %for.body53.1.if.end61.1_crit_edge
  %27 = and i32 %23, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool55.not.2 = icmp eq i32 %27, 0
  br i1 %tobool55.not.2, label %if.end61.1.if.end61.2_crit_edge, label %if.then56.2

if.end61.1.if.end61.2_crit_edge:                  ; preds = %if.end61.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.2

if.then56.2:                                      ; preds = %if.end61.1
  call void @__sanitizer_cov_trace_pc() #15
  %inc63.1 = or i32 %i.1118, %shl58
  %or59.2 = or i32 %inc63.1, 2
  %28 = tail call i32 @llvm.bswap.i32(i32 %or59.2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %28) #13, !srcloc !136
  br label %if.end61.2

if.end61.2:                                       ; preds = %if.then56.2, %if.end61.1.if.end61.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %23)
  %tobool55.not.3 = icmp ult i32 %23, 16777216
  br i1 %tobool55.not.3, label %if.end61.2.cleanup_crit_edge, label %if.then56.3

if.end61.2.cleanup_crit_edge:                     ; preds = %if.end61.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then56.3:                                      ; preds = %if.end61.2
  call void @__sanitizer_cov_trace_pc() #15
  %inc63.2 = or i32 %i.1118, %shl58
  %or59.3 = or i32 %inc63.2, 3
  %29 = tail call i32 @llvm.bswap.i32(i32 %or59.3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %29) #13, !srcloc !136
  br label %cleanup

cleanup:                                          ; preds = %if.then56.3, %if.end61.2.cleanup_crit_edge, %for.body38.cleanup_crit_edge
  %add66 = add nuw nsw i32 %i.1118, 4
  %cmp36 = icmp ult i32 %i.1118, 12
  br i1 %cmp36, label %cleanup.for.body38_crit_edge, label %cleanup.cleanup68_crit_edge

cleanup.cleanup68_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup68

cleanup.for.body38_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body38

cleanup68:                                        ; preds = %cleanup.cleanup68_crit_edge, %__get_base.exit.cleanup68_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gic_get_sgir_physaddr() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gic_dist_physaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %add = add i32 %0, 3840
  %retval.0 = select i1 %tobool.not, i32 0, i32 %add
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_init(ptr noundef %dist_base, ptr noundef %cpu_base) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @static_key_disable(ptr noundef nonnull @supports_deactivate_key) #13
  store ptr %dist_base, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 3), align 4
  store ptr %cpu_base, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 4), align 4
  %call = tail call fastcc i32 @__gic_init_bases(ptr noundef nonnull @gic_data, ptr noundef null) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__gic_init_bases(ptr noundef %gic, ptr noundef %handle) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gic, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %domain = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 13
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end23, label %lor.rhs.do.end_crit_edge, !prof !134

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1252, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %lor.rhs
  %cmp = icmp eq ptr %gic, @gic_data
  br i1 %cmp, label %for.body.preheader, label %if.end23.if.end44_crit_edge

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

for.body.preheader:                               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  store i64 -1, ptr @gic_cpu_map, align 1
  %call = tail call i32 @set_handle_irq(ptr noundef nonnull @gic_handle_irq) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @supports_deactivate_key, i32 1), ptr blockaddress(@__gic_init_bases, %if.end44)) #13
          to label %do.end40 [label %if.end44], !srcloc !131

do.end40:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #17
  br label %if.end44

if.end44:                                         ; preds = %do.end40, %for.body.preheader, %if.end23.if.end44_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @supports_deactivate_key, i32 1), ptr blockaddress(@__gic_init_bases, %if.else)) #13
          to label %arch_static_branch.exit89 [label %if.else], !srcloc !131

arch_static_branch.exit89:                        ; preds = %if.end44
  br i1 %cmp, label %if.end62, label %arch_static_branch.exit89.if.else_crit_edge

arch_static_branch.exit89.if.else_crit_edge:      ; preds = %arch_static_branch.exit89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.else:                                          ; preds = %arch_static_branch.exit89.if.else_crit_edge, %if.end44
  %sub.ptr.lhs.cast = ptrtoint ptr %gic to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @gic_data to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 1708
  %call61 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, i32 noundef %sub.ptr.div) #13
  %2 = call ptr @memcpy(ptr %gic, ptr @gic_chip, i32 136)
  %name2.i = getelementptr inbounds %struct.irq_chip, ptr %gic, i32 0, i32 1
  %3 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call61, ptr %name2.i, align 4
  %4 = ptrtoint ptr %gic to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %gic, align 4
  br i1 %cmp, label %if.end62.thread101, label %if.end62.thread

if.end62:                                         ; preds = %arch_static_branch.exit89
  %call60 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6) #13
  %5 = call ptr @memcpy(ptr @gic_data, ptr @gic_chip, i32 136)
  store ptr %call60, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 1), align 4
  store ptr null, ptr @gic_data, align 4
  store ptr @gic_eoimode1_mask_irq, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 7), align 4
  store ptr @gic_eoimode1_eoi_irq, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 10), align 4
  store ptr @gic_irq_set_vcpu_affinity, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 28), align 4
  store ptr @gic_set_affinity, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 11), align 4
  store ptr @gic_ipi_send_mask, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 30), align 4
  %call63 = tail call fastcc i32 @gic_init_bases(ptr noundef nonnull @gic_data, ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end62.if.then68_crit_edge, label %if.end62.if.then65_crit_edge

if.end62.if.then65_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65

if.end62.if.then68_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

if.end62.thread101:                               ; preds = %if.else
  store ptr @gic_set_affinity, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 11), align 4
  store ptr @gic_ipi_send_mask, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 0, i32 30), align 4
  %call63103 = tail call fastcc i32 @gic_init_bases(ptr noundef nonnull @gic_data, ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63103)
  %tobool64.not104 = icmp eq i32 %call63103, 0
  br i1 %tobool64.not104, label %if.end62.thread101.if.then68_crit_edge, label %if.end62.thread101.if.then65_crit_edge

if.end62.thread101.if.then65_crit_edge:           ; preds = %if.end62.thread101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65

if.end62.thread101.if.then68_crit_edge:           ; preds = %if.end62.thread101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

if.end62.thread:                                  ; preds = %if.else
  %call6395 = tail call fastcc i32 @gic_init_bases(ptr noundef nonnull %gic, ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6395)
  %tobool64.not96 = icmp eq i32 %call6395, 0
  br i1 %tobool64.not96, label %if.end62.thread.cleanup_crit_edge, label %if.end62.thread.if.then65_crit_edge

if.end62.thread.if.then65_crit_edge:              ; preds = %if.end62.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65

if.end62.thread.cleanup_crit_edge:                ; preds = %if.end62.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then65:                                        ; preds = %if.end62.thread.if.then65_crit_edge, %if.end62.thread101.if.then65_crit_edge, %if.end62.if.then65_crit_edge
  %call6399 = phi i32 [ %call6395, %if.end62.thread.if.then65_crit_edge ], [ %call63, %if.end62.if.then65_crit_edge ], [ %call63103, %if.end62.thread101.if.then65_crit_edge ]
  %name.097 = phi ptr [ %call61, %if.end62.thread.if.then65_crit_edge ], [ %call60, %if.end62.if.then65_crit_edge ], [ %call61, %if.end62.thread101.if.then65_crit_edge ]
  tail call void @kfree(ptr noundef %name.097) #13
  br label %cleanup

if.then68:                                        ; preds = %if.end62.thread101.if.then68_crit_edge, %if.end62.if.then68_crit_edge
  tail call fastcc void @gic_smp_init() #16
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.then65, %if.end62.thread.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then68 ], [ %call6399, %if.then65 ], [ 0, %if.end62.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gicv2_force_probe_cfg(ptr noundef %buf) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull @gicv2_force_probe) #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gic_of_init_child(ptr noundef %dev, ptr noundef %gic, i32 noundef %irq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool1.not = icmp eq ptr %1, null
  %tobool3.not = icmp eq ptr %gic, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool5.not = icmp eq i32 %irq, 0
  %or.cond37 = or i1 %tobool5.not, %or.cond
  br i1 %or.cond37, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef 1708, i32 noundef 3520) #13
  %2 = ptrtoint ptr %gic to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %gic, align 4
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = call ptr @memcpy(ptr %call.i, ptr @gic_chip, i32 136)
  %name2.i = getelementptr inbounds %struct.irq_chip, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %name2.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %call.i, align 4
  %call11 = tail call fastcc i32 @gic_of_setup(ptr noundef nonnull %call.i, ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %gic to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gic, align 4
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %fwnode = getelementptr inbounds %struct.device_node, ptr %13, i32 0, i32 3
  %call16 = tail call fastcc i32 @gic_init_bases(ptr noundef %11, ptr noundef %fwnode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  %14 = ptrtoint ptr %gic to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gic, align 4
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.critedge.i, !prof !129

do.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1305, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23.critedge.i:                              ; preds = %if.then18
  %raw_dist_base.i = getelementptr inbounds %struct.gic_chip_data, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %raw_dist_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %raw_dist_base.i, align 4
  %tobool24.not.i = icmp eq ptr %17, null
  br i1 %tobool24.not.i, label %if.end23.critedge.i.if.end27.i_crit_edge, label %if.then25.i

if.end23.critedge.i.if.end27.i_crit_edge:         ; preds = %if.end23.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end23.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iounmap(ptr noundef nonnull %17) #13
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end23.critedge.i.if.end27.i_crit_edge
  %raw_cpu_base.i = getelementptr inbounds %struct.gic_chip_data, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %raw_cpu_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %raw_cpu_base.i, align 4
  %tobool28.not.i = icmp eq ptr %19, null
  br i1 %tobool28.not.i, label %if.end27.i.cleanup_crit_edge, label %if.then29.i

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iounmap(ptr noundef nonnull %19) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @irq_set_chained_handler_and_data(i32 noundef %irq, ptr noundef nonnull @gic_handle_cascade_irq, ptr noundef %15) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then29.i, %if.end27.i.cleanup_crit_edge, %do.end.i, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ], [ %call16, %do.end.i ], [ %call16, %if.end27.i.cleanup_crit_edge ], [ %call16, %if.then29.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gic_of_setup(ptr noundef %gic, ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gic, null
  %tobool1.not = icmp eq ptr %node, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_iomap(ptr noundef nonnull %node, i32 noundef 0) #13
  %raw_dist_base = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 3
  %0 = ptrtoint ptr %raw_dist_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %raw_dist_base, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end, label %if.end28.critedge, !prof !129

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1432, i32 noundef 9, ptr noundef nonnull @.str.15) #13
  br label %error

if.end28.critedge:                                ; preds = %if.end
  %call29 = tail call ptr @of_iomap(ptr noundef nonnull %node, i32 noundef 1) #13
  %raw_cpu_base = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 4
  %1 = ptrtoint ptr %raw_cpu_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call29, ptr %raw_cpu_base, align 4
  %tobool32.not = icmp eq ptr %call29, null
  br i1 %tobool32.not, label %do.end50, label %if.end66.critedge, !prof !129

do.end50:                                         ; preds = %if.end28.critedge
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1436, i32 noundef 9, ptr noundef nonnull @.str.16) #13
  br label %error

if.end66.critedge:                                ; preds = %if.end28.critedge
  %percpu_offset = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 5
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.17, ptr noundef %percpu_offset, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool68.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool68.not, label %if.end66.critedge.if.end71_crit_edge, label %if.then69

if.end66.critedge.if.end71_crit_edge:             ; preds = %if.end66.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then69:                                        ; preds = %if.end66.critedge
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %percpu_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %percpu_offset, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end66.critedge.if.end71_crit_edge
  tail call void @gic_enable_of_quirks(ptr noundef nonnull %node, ptr noundef nonnull @gic_quirks, ptr noundef nonnull %gic) #13
  br label %return

error:                                            ; preds = %do.end50, %do.end
  tail call fastcc void @gic_teardown(ptr noundef nonnull %gic)
  br label %return

return:                                           ; preds = %error, %if.end71, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %error ], [ 0, %if.end71 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gic_init_bases(ptr noundef %gic, ptr noundef %handle) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %percpu_offset = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 5
  %0 = ptrtoint ptr %percpu_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %percpu_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end75, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %dist_base = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 1
  %2 = ptrtoint ptr %dist_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %dist_base, align 4
  %call1 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %cpu_base = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 2
  %3 = ptrtoint ptr %cpu_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %cpu_base, align 4
  %4 = ptrtoint ptr %dist_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dist_base, align 4
  %tobool3.not = icmp eq ptr %5, null
  %tobool5.not = icmp eq ptr %call1, null
  %spec.select = select i1 %tobool3.not, i1 true, i1 %tobool5.not
  br i1 %spec.select, label %cleanup, label %for.cond.preheader, !prof !129

for.cond.preheader:                               ; preds = %if.then
  %call30248 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call30248, i32 %6)
  %cmp249 = icmp ult i32 %call30248, %6
  br i1 %cmp249, label %for.body.lr.ph, label %for.cond.preheader.cleanup.thread_crit_edge

for.cond.preheader.cleanup.thread_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %raw_dist_base = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 3
  %raw_cpu_base = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call30250 = phi i32 [ %call30248, %for.body.lr.ph ], [ %call30, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call30250
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %and = and i32 %8, 255
  %9 = ptrtoint ptr %percpu_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %percpu_offset, align 4
  %mul = mul i32 %10, %and
  %11 = ptrtoint ptr %raw_dist_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %raw_dist_base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %mul
  %13 = ptrtoint ptr %dist_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dist_base, align 4
  %15 = ptrtoint ptr %14 to i32
  %arrayidx38 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call30250
  %16 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx38, align 4
  %add = add i32 %17, %15
  %18 = inttoptr i32 %add to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %18, align 4
  %20 = ptrtoint ptr %raw_cpu_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %raw_cpu_base, align 4
  %add.ptr39 = getelementptr i8, ptr %21, i32 %mul
  %22 = ptrtoint ptr %cpu_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cpu_base, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = load i32, ptr %arrayidx38, align 4
  %add49 = add i32 %25, %24
  %26 = inttoptr i32 %add49 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr39, ptr %26, align 4
  %call30 = tail call i32 @cpumask_next(i32 noundef %call30250, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call30, %28
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup.thread_crit_edge

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.thread:                                   ; preds = %for.body.cleanup.thread_crit_edge, %for.cond.preheader.cleanup.thread_crit_edge
  tail call void @static_key_enable(ptr noundef nonnull @frankengic_key) #13
  br label %if.end87

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1162, i32 noundef 9, ptr noundef null) #13
  br label %error

if.end75:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %raw_dist_base83 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 3
  %29 = ptrtoint ptr %raw_dist_base83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %raw_dist_base83, align 4
  %dist_base84 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 1
  %31 = ptrtoint ptr %dist_base84 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %dist_base84, align 4
  %raw_cpu_base85 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 4
  %32 = ptrtoint ptr %raw_cpu_base85 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %raw_cpu_base85, align 4
  %cpu_base86 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 2
  %34 = ptrtoint ptr %cpu_base86 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %cpu_base86, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end75, %cleanup.thread
  %dist_base88 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_init_bases, %if.then.i)) #13
          to label %__get_base.exit [label %if.then.i], !srcloc !131

if.then.i:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %dist_base88 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dist_base88, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %43, %37
  %44 = inttoptr i32 %add.i to ptr
  br label %__get_base.exit

__get_base.exit:                                  ; preds = %if.then.i, %if.end87
  %retval.0.in.i = phi ptr [ %44, %if.then.i ], [ %dist_base88, %if.end87 ]
  %45 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %add.ptr90 = getelementptr i8, ptr %retval.0.i, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #13, !srcloc !132
  %47 = lshr i32 %46, 19
  %add94 = and i32 %47, 992
  %48 = tail call i32 @llvm.umin.i32(i32 %add94, i32 988)
  %49 = add nuw nsw i32 %48, 32
  %gic_irqs99 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 14
  %50 = ptrtoint ptr %gic_irqs99 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %gic_irqs99, align 4
  %tobool100.not = icmp eq ptr %handle, null
  br i1 %tobool100.not, label %if.else103, label %if.then101

if.then101:                                       ; preds = %__get_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @__irq_domain_add(ptr noundef nonnull %handle, i32 noundef %49, i32 noundef %49, i32 noundef 0, ptr noundef nonnull @gic_irq_domain_hierarchy_ops, ptr noundef %gic) #13
  br label %if.end137

if.else103:                                       ; preds = %__get_base.exit
  %sub = add nuw nsw i32 %48, 16
  %call105 = tail call i32 @__irq_alloc_descs(i32 noundef 16, i32 noundef 16, i32 noundef %sub, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %do.end120, label %if.else103.if.end134_crit_edge

if.else103.if.end134_crit_edge:                   ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

do.end120:                                        ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1213, i32 noundef 9, ptr noundef nonnull @.str.22) #13
  br label %if.end134

if.end134:                                        ; preds = %do.end120, %if.else103.if.end134_crit_edge
  %irq_base.0 = phi i32 [ 16, %do.end120 ], [ %call105, %if.else103.if.end134_crit_edge ]
  %call135 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef %sub, i32 noundef %irq_base.0, i32 noundef 16, ptr noundef nonnull @gic_irq_domain_ops, ptr noundef %gic) #13
  br label %if.end137

if.end137:                                        ; preds = %if.end134, %if.then101
  %call135.sink = phi ptr [ %call135, %if.end134 ], [ %call.i, %if.then101 ]
  %domain136 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 13
  %51 = ptrtoint ptr %domain136 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call135.sink, ptr %domain136, align 4
  %tobool140.not = icmp eq ptr %call135.sink, null
  br i1 %tobool140.not, label %do.end158, label %if.end174, !prof !129

do.end158:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1221, i32 noundef 9, ptr noundef null) #13
  br label %error

if.end174:                                        ; preds = %if.end137
  %52 = ptrtoint ptr %gic_irqs99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gic_irqs99, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_init_bases, %if.then.i.i)) #13
          to label %__get_base.exit.i [label %if.then.i.i], !srcloc !131

if.then.i.i:                                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %dist_base88 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dist_base88, align 4
  %56 = ptrtoint ptr %55 to i32
  %57 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %62, %56
  %63 = inttoptr i32 %add.i.i to ptr
  br label %__get_base.exit.i

__get_base.exit.i:                                ; preds = %if.then.i.i, %if.end174
  %retval.0.in.i.i = phi ptr [ %63, %if.then.i.i ], [ %dist_base88, %if.end174 ]
  %64 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i.i, i32 0) #13, !srcloc !136
  %call2.i = tail call fastcc zeroext i8 @gic_get_cpumask(ptr noundef %gic) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %53)
  %cmp22.i = icmp ugt i32 %53, 32
  br i1 %cmp22.i, label %for.body.lr.ph.i, label %__get_base.exit.i.gic_dist_init.exit_crit_edge

__get_base.exit.i.gic_dist_init.exit_crit_edge:   ; preds = %__get_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gic_dist_init.exit

for.body.lr.ph.i:                                 ; preds = %__get_base.exit.i
  %conv.i = zext i8 %call2.i to i32
  %or4.i = mul nuw i32 %conv.i, 16843009
  %65 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #13
  %add.ptr6.i = getelementptr i8, ptr %retval.0.i.i, i32 2048
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.023.i = phi i32 [ 32, %for.body.lr.ph.i ], [ %add.i239, %for.body.i.for.body.i_crit_edge ]
  %mul.i = and i32 %i.023.i, 1073741820
  %add.ptr7.i = getelementptr i8, ptr %add.ptr6.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %65) #13, !srcloc !136
  %add.i239 = add i32 %i.023.i, 4
  %cmp.i = icmp ult i32 %add.i239, %53
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.gic_dist_init.exit_crit_edge

for.body.i.gic_dist_init.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gic_dist_init.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

gic_dist_init.exit:                               ; preds = %for.body.i.gic_dist_init.exit_crit_edge, %__get_base.exit.i.gic_dist_init.exit_crit_edge
  tail call void @gic_dist_config(ptr noundef %retval.0.i.i, i32 noundef %53, ptr noundef null) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i.i, i32 16777216) #13, !srcloc !136
  %call175 = tail call fastcc i32 @gic_cpu_init(ptr noundef %gic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end178, label %gic_dist_init.exit.error_crit_edge

gic_dist_init.exit.error_crit_edge:               ; preds = %gic_dist_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end178:                                        ; preds = %gic_dist_init.exit
  %call.i240 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %saved_ppi_enable.i = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 10
  %66 = ptrtoint ptr %saved_ppi_enable.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i240, ptr %saved_ppi_enable.i, align 4
  %tobool.not.i = icmp eq ptr %call.i240, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end24.i, !prof !129

do.end.i:                                         ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 746, i32 noundef 9, ptr noundef null) #13
  br label %error

if.end24.i:                                       ; preds = %if.end178
  %call25.i = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %saved_ppi_active.i = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 11
  %67 = ptrtoint ptr %saved_ppi_active.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call25.i, ptr %saved_ppi_active.i, align 4
  %tobool28.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool28.not.i, label %do.end46.i, label %if.end62.critedge.i, !prof !129

do.end46.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 751, i32 noundef 9, ptr noundef null) #13
  br label %free_ppi_enable.i

if.end62.critedge.i:                              ; preds = %if.end24.i
  %call63.i = tail call noalias ptr @__alloc_percpu(i32 noundef 8, i32 noundef 4) #18
  %saved_ppi_conf.i = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 12
  %68 = ptrtoint ptr %saved_ppi_conf.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call63.i, ptr %saved_ppi_conf.i, align 4
  %tobool66.not.i = icmp eq ptr %call63.i, null
  br i1 %tobool66.not.i, label %do.end84.i, label %if.end100.critedge.i, !prof !129

do.end84.i:                                       ; preds = %if.end62.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 756, i32 noundef 9, ptr noundef null) #13
  %69 = ptrtoint ptr %saved_ppi_active.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %saved_ppi_active.i, align 4
  tail call void @free_percpu(ptr noundef %70) #13
  br label %free_ppi_enable.i

if.end100.critedge.i:                             ; preds = %if.end62.critedge.i
  %cmp.i241 = icmp eq ptr %gic, @gic_data
  br i1 %cmp.i241, label %if.then101.i, label %if.end100.critedge.i.cleanup189_crit_edge

if.end100.critedge.i.cleanup189_crit_edge:        ; preds = %if.end100.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup189

if.then101.i:                                     ; preds = %if.end100.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  %call102.i = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @gic_notifier_block) #13
  br label %cleanup189

free_ppi_enable.i:                                ; preds = %do.end84.i, %do.end46.i
  %71 = ptrtoint ptr %saved_ppi_enable.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %saved_ppi_enable.i, align 4
  tail call void @free_percpu(ptr noundef %72) #13
  br label %error

error:                                            ; preds = %free_ppi_enable.i, %do.end.i, %gic_dist_init.exit.error_crit_edge, %do.end158, %cleanup
  %ret.1 = phi i32 [ -12, %cleanup ], [ -19, %do.end158 ], [ %call175, %gic_dist_init.exit.error_crit_edge ], [ -12, %do.end.i ], [ -12, %free_ppi_enable.i ]
  %73 = ptrtoint ptr %percpu_offset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %percpu_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool184.not = icmp eq i32 %74, 0
  br i1 %tobool184.not, label %error.cleanup189_crit_edge, label %if.then185

error.cleanup189_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup189

if.then185:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #15
  %dist_base186 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 1
  %75 = ptrtoint ptr %dist_base186 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dist_base186, align 4
  tail call void @free_percpu(ptr noundef %76) #13
  %cpu_base187 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 2
  %77 = ptrtoint ptr %cpu_base187 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cpu_base187, align 4
  tail call void @free_percpu(ptr noundef %78) #13
  br label %cleanup189

cleanup189:                                       ; preds = %if.then185, %error.cleanup189_crit_edge, %if.then101.i, %if.end100.critedge.i.cleanup189_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.then185 ], [ %ret.1, %error.cleanup189_crit_edge ], [ 0, %if.then101.i ], [ 0, %if.end100.critedge.i.cleanup189_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gic_teardown(ptr noundef readonly %gic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gic, null
  br i1 %tobool.not, label %do.end, label %if.end23.critedge, !prof !129

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1305, i32 noundef 9, ptr noundef null) #13
  br label %if.end31

if.end23.critedge:                                ; preds = %entry
  %raw_dist_base = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 3
  %0 = ptrtoint ptr %raw_dist_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw_dist_base, align 4
  %tobool24.not = icmp eq ptr %1, null
  br i1 %tobool24.not, label %if.end23.critedge.if.end27_crit_edge, label %if.then25

if.end23.critedge.if.end27_crit_edge:             ; preds = %if.end23.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then25:                                        ; preds = %if.end23.critedge
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iounmap(ptr noundef nonnull %1) #13
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.critedge.if.end27_crit_edge
  %raw_cpu_base = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 4
  %2 = ptrtoint ptr %raw_cpu_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raw_cpu_base, align 4
  %tobool28.not = icmp eq ptr %3, null
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iounmap(ptr noundef nonnull %3) #13
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gic_of_init(ptr noundef %node, ptr noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  %cpuif_res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !129

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1510, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %0 = load i32, ptr @gic_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end40, label %if.end56, !prof !129

do.end40:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1513, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end56:                                         ; preds = %if.end23
  %arrayidx = getelementptr [2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 %0
  %call = tail call fastcc i32 @gic_of_setup(ptr noundef %arrayidx, ptr noundef nonnull %node)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool57.not = icmp eq i32 %call, 0
  br i1 %tobool57.not, label %if.end59, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end59:                                         ; preds = %if.end56
  %1 = load i32, ptr @gic_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp60 = icmp eq i32 %1, 0
  br i1 %cmp60, label %land.lhs.true, label %if.end59.if.end63_crit_edge

if.end59.if.end63_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end59
  %raw_cpu_base = getelementptr [2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 %0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cpuif_res.i) #13
  %2 = getelementptr inbounds %struct.resource, ptr %cpuif_res.i, i32 0, i32 1
  %3 = call ptr @memset(ptr %cpuif_res.i, i32 255, i32 32)
  %call.i = call i32 @of_address_to_resource(ptr noundef nonnull %node, i32 noundef 1, ptr noundef nonnull %cpuif_res.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__boot_cpu_mode to i32))
  %4 = load i32, ptr @__boot_cpu_mode, align 4
  %5 = and i32 %4, -2147483617
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %5)
  %6 = icmp eq i32 %5, 26
  br i1 %6, label %if.end.i, label %land.lhs.true.if.then62_crit_edge

land.lhs.true.if.then62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then62

if.end.i:                                         ; preds = %land.lhs.true
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  %9 = ptrtoint ptr %cpuif_res.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpuif_res.i, align 4
  %sub.i.i = add i32 %8, 1
  %add.i.i = sub i32 %sub.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add.i.i)
  %cmp.i = icmp ult i32 %add.i.i, 8192
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.if.end35.i_crit_edge

if.end.i.if.end35.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

if.then3.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %raw_cpu_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %raw_cpu_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 252
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !132
  %14 = and i32 %13, -15728896
  call void @__sanitizer_cov_trace_const_cmp4(i32 990118400, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 990118400
  br i1 %cmp.i.i, label %if.end6.i, label %if.then3.i.if.then62_crit_edge

if.then3.i.if.then62_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then62

if.end6.i:                                        ; preds = %if.then3.i
  %15 = load i8, ptr @gicv2_force_probe, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #17
  br label %if.then62

if.end9.i:                                        ; preds = %if.end6.i
  %16 = ptrtoint ptr %cpuif_res.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpuif_res.i, align 4
  %call10.i = call ptr @ioremap(i32 noundef %17, i32 noundef 8192) #13
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end9.i.if.then62_crit_edge, label %if.end13.i

if.end9.i.if.then62_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then62

if.end13.i:                                       ; preds = %if.end9.i
  %add.ptr.i67.i = getelementptr i8, ptr %call10.i, i32 4348
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #13, !srcloc !132
  %19 = and i32 %18, -15728896
  call void @__sanitizer_cov_trace_const_cmp4(i32 990118400, i32 %19)
  %cmp.i68.i = icmp eq i32 %19, 990118400
  br i1 %cmp.i68.i, label %if.end22.i, label %do.end18.i

do.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull %cpuif_res.i) #17
  %20 = ptrtoint ptr %raw_cpu_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %raw_cpu_base, align 4
  call void @iounmap(ptr noundef %21) #13
  %22 = ptrtoint ptr %raw_cpu_base to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call10.i, ptr %raw_cpu_base, align 4
  br label %gic_check_eoimode.exit

if.end22.i:                                       ; preds = %if.end13.i
  call void @iounmap(ptr noundef nonnull %call10.i) #13
  %23 = ptrtoint ptr %cpuif_res.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpuif_res.i, align 4
  %call24.i = call ptr @ioremap(i32 noundef %24, i32 noundef 131072) #13
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.end22.i.if.then62_crit_edge, label %cleanup.i

if.end22.i.if.then62_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then62

cleanup.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull %cpuif_res.i) #17
  %25 = ptrtoint ptr %cpuif_res.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpuif_res.i, align 4
  %sub.i = add i32 %26, 131071
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.i, ptr %2, align 4
  %28 = ptrtoint ptr %raw_cpu_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %raw_cpu_base, align 4
  call void @iounmap(ptr noundef %29) #13
  %30 = ptrtoint ptr %raw_cpu_base to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call24.i, ptr %raw_cpu_base, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %cleanup.i, %if.end.i.if.end35.i_crit_edge
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %2, align 4
  %33 = ptrtoint ptr %cpuif_res.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpuif_res.i, align 4
  %sub.i70.i = add i32 %32, 1
  %add.i71.i = sub i32 %sub.i70.i, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %add.i71.i)
  %cmp37.i = icmp eq i32 %add.i71.i, 131072
  br i1 %cmp37.i, label %if.then38.i, label %if.end35.i.gic_check_eoimode.exit_crit_edge

if.end35.i.gic_check_eoimode.exit_crit_edge:      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gic_check_eoimode.exit

if.then38.i:                                      ; preds = %if.end35.i
  %35 = ptrtoint ptr %raw_cpu_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %raw_cpu_base, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %36, i32 252
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72.i) #13, !srcloc !132
  %38 = and i32 %37, -15728896
  call void @__sanitizer_cov_trace_const_cmp4(i32 990118400, i32 %38)
  %cmp.i73.i = icmp eq i32 %38, 990118400
  br i1 %cmp.i73.i, label %lor.lhs.false.i, label %if.then38.i.if.then62_crit_edge

if.then38.i.if.then62_crit_edge:                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then62

lor.lhs.false.i:                                  ; preds = %if.then38.i
  %39 = ptrtoint ptr %raw_cpu_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %raw_cpu_base, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %40, i32 61692
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74.i) #13, !srcloc !132
  %42 = and i32 %41, -15728896
  call void @__sanitizer_cov_trace_const_cmp4(i32 990118400, i32 %42)
  %cmp.i75.i = icmp eq i32 %42, 990118400
  br i1 %cmp.i75.i, label %if.end43.i, label %lor.lhs.false.i.if.then62_crit_edge

lor.lhs.false.i.if.then62_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then62

if.end43.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %raw_cpu_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %raw_cpu_base, align 4
  %add.ptr44.i = getelementptr i8, ptr %44, i32 61440
  store ptr %add.ptr44.i, ptr %raw_cpu_base, align 4
  %45 = ptrtoint ptr %cpuif_res.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpuif_res.i, align 4
  %add46.i = add i32 %46, 61440
  store i32 %add46.i, ptr %cpuif_res.i, align 4
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull %cpuif_res.i) #17
  br label %gic_check_eoimode.exit

gic_check_eoimode.exit:                           ; preds = %if.end43.i, %if.end35.i.gic_check_eoimode.exit_crit_edge, %do.end18.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cpuif_res.i) #13
  br label %if.end63

if.then62:                                        ; preds = %lor.lhs.false.i.if.then62_crit_edge, %if.then38.i.if.then62_crit_edge, %if.end22.i.if.then62_crit_edge, %if.end9.i.if.then62_crit_edge, %do.end.i, %if.then3.i.if.then62_crit_edge, %land.lhs.true.if.then62_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cpuif_res.i) #13
  call void @static_key_disable(ptr noundef nonnull @supports_deactivate_key) #13
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %gic_check_eoimode.exit, %if.end59.if.end63_crit_edge
  %fwnode = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %call64 = call fastcc i32 @__gic_init_bases(ptr noundef %arrayidx, ptr noundef %fwnode) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @gic_teardown(ptr noundef %arrayidx)
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  %47 = load i32, ptr @gic_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool68.not = icmp eq i32 %47, 0
  br i1 %tobool68.not, label %if.then69, label %if.end67.if.end70_crit_edge

if.end67.if.end70_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @gic_init_physaddr(ptr noundef nonnull %node) #16
  call fastcc void @gic_of_setup_kvm_info(ptr noundef nonnull %node) #16
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67.if.end70_crit_edge
  %tobool71.not = icmp eq ptr %parent, null
  br i1 %tobool71.not, label %if.end70.if.end74_crit_edge, label %if.then72

if.end70.if.end74_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then72:                                        ; preds = %if.end70
  %call73 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %node, i32 noundef 0) #13
  %48 = load i32, ptr @gic_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i95 = icmp ugt i32 %48, 1
  br i1 %cmp.i95, label %do.body2.i, label %gic_cascade_irq.exit, !prof !129

do.body2.i:                                       ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-gic.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #13, !srcloc !130
  unreachable

gic_cascade_irq.exit:                             ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr [2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 %48
  call void @irq_set_chained_handler_and_data(i32 noundef %call73, ptr noundef nonnull @gic_handle_cascade_irq, ptr noundef %arrayidx.i) #13
  br label %if.end74

if.end74:                                         ; preds = %gic_cascade_irq.exit, %if.end70.if.end74_crit_edge
  %49 = load i32, ptr @gic_cnt, align 4
  %domain = getelementptr [2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 %49, i32 13
  %50 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %domain, align 4
  %call77 = call i32 @gicv2m_init(ptr noundef %fwnode, ptr noundef %51) #13
  %52 = load i32, ptr @gic_cnt, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr @gic_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then66, %if.end56.cleanup_crit_edge, %do.end40, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %do.end40 ], [ %call64, %if.then66 ], [ 0, %if.end74 ], [ %call, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gic_init_physaddr(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #13
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %res) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %res, align 4
  store i32 %2, ptr @gic_dist_physaddr, align 4
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %2) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gic_of_setup_kvm_info(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @gic_v2_kvm_info, align 4
  %call = tail call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #13
  store i32 %call, ptr getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v2_kvm_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 2, ptr noundef getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v2_kvm_info, i32 0, i32 4)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 3, ptr noundef getelementptr inbounds (%struct.gic_kvm_info, ptr @gic_v2_kvm_info, i32 0, i32 1)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @supports_deactivate_key, i32 1), ptr blockaddress(@gic_of_setup_kvm_info, %arch_static_branch.exit.thread)) #13
          to label %cleanup [label %arch_static_branch.exit.thread], !srcloc !131

arch_static_branch.exit.thread:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %arch_static_branch.exit.thread, %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gicv2m_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_handle_irq(ptr nocapture noundef readnone %regs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_handle_irq, %if.then.i)) #13
          to label %__get_base.exit [label %if.then.i], !srcloc !131

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 2), align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, %1
  %8 = inttoptr i32 %add.i to ptr
  br label %__get_base.exit

__get_base.exit:                                  ; preds = %if.then.i, %entry
  %retval.0.in.i = phi ptr [ %8, %if.then.i ], [ getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 2), %entry ]
  %9 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %retval.0.i82 = load ptr, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i82, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !132
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %and85 = and i32 %11, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 1019, i32 %and85)
  %cmp86 = icmp ugt i32 %and85, 1019
  br i1 %cmp86, label %__get_base.exit.do.end75_crit_edge, label %if.end.lr.ph, !prof !129

__get_base.exit.do.end75_crit_edge:               ; preds = %__get_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end75

if.end.lr.ph:                                     ; preds = %__get_base.exit
  %add.ptr16 = getelementptr i8, ptr %retval.0.i82, i32 16
  br label %if.end

if.end:                                           ; preds = %if.end72.if.end_crit_edge, %if.end.lr.ph
  %and87 = phi i32 [ %and85, %if.end.lr.ph ], [ %and, %if.end72.if.end_crit_edge ]
  %12 = phi i32 [ %11, %if.end.lr.ph ], [ %26, %if.end72.if.end_crit_edge ]
  %13 = phi i32 [ %10, %if.end.lr.ph ], [ %25, %if.end72.if.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @supports_deactivate_key, i32 1), ptr blockaddress(@gic_handle_irq, %if.end17)) #13
          to label %if.then15 [label %if.end17], !srcloc !131

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %13) #13, !srcloc !136
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and87)
  %cmp18 = icmp ult i32 %and87, 16
  br i1 %cmp18, label %do.end, label %if.end17.if.end72_crit_edge

if.end17.if.end72_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

do.end:                                           ; preds = %if.end17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !142
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !143
  %15 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %add = add i32 %20, ptrtoint (ptr @sgi_intid to i32)
  %21 = inttoptr i32 %add to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %12, ptr %21, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !144
  %and.i.i83 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i83)
  %tobool53.not = icmp eq i32 %and.i.i83, 0
  br i1 %tobool53.not, label %if.then62, label %do.end.do.end65_crit_edge, !prof !129

do.end.do.end65_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65

if.then62:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %do.end.do.end65_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #13, !srcloc !145
  br label %if.end72

if.end72:                                         ; preds = %do.end65, %if.end17.if.end72_crit_edge
  %24 = load ptr, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 13), align 4
  %call73 = tail call i32 @generic_handle_domain_irq(ptr noundef %24, i32 noundef %and87) #13
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !132
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %and = and i32 %26, 1023
  %cmp = icmp ugt i32 %and, 1019
  br i1 %cmp, label %if.end72.do.end75_crit_edge, label %if.end72.if.end_crit_edge, !prof !129

if.end72.if.end_crit_edge:                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end72.do.end75_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end75

do.end75:                                         ; preds = %if.end72.do.end75_crit_edge, %__get_base.exit.do.end75_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gic_smp_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %sgi_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %sgi_fwspec) #13
  %0 = getelementptr inbounds i8, ptr %sgi_fwspec, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 64)
  %2 = load ptr, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 13), align 4
  %fwnode1 = getelementptr inbounds %struct.irq_domain, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %fwnode1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fwnode1, align 4
  %5 = ptrtoint ptr %sgi_fwspec to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %sgi_fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %sgi_fwspec, i32 0, i32 1
  %6 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %param_count, align 4
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 97, ptr noundef nonnull @.str.8, i1 noundef zeroext false, ptr noundef nonnull @gic_starting_cpu, ptr noundef null, i1 noundef zeroext false) #13
  %7 = load ptr, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 13), align 4
  %call2 = call i32 @__irq_domain_alloc_irqs(ptr noundef %7, i32 noundef -1, i32 noundef 8, i32 noundef -1, ptr noundef nonnull %sgi_fwspec, i1 noundef zeroext false, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %do.end, label %if.end23, !prof !129

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 872, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @set_smp_ipi_range(i32 noundef %call2, i32 noundef 8) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %sgi_fwspec) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_starting_cpu(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gic_cpu_init(ptr noundef nonnull @gic_data)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_smp_ipi_range(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gic_cpu_init(ptr noundef readonly %gic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dist_base1 = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_cpu_init, %if.then.i)) #13
          to label %__get_base.exit [label %if.then.i], !srcloc !131

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %dist_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dist_base1, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %2
  %9 = inttoptr i32 %add.i to ptr
  br label %__get_base.exit

__get_base.exit:                                  ; preds = %if.then.i, %entry
  %retval.0.in.i = phi ptr [ %9, %if.then.i ], [ %dist_base1, %entry ]
  %10 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %cpu_base = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_cpu_init, %if.then.i62)) #13
          to label %__get_base.exit65 [label %if.then.i62], !srcloc !131

if.then.i62:                                      ; preds = %__get_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %cpu_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_base, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i58 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i58 to ptr
  %cpu.i59 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i59, align 4
  %arrayidx.i60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i60, align 4
  %add.i61 = add i32 %19, %13
  %20 = inttoptr i32 %add.i61 to ptr
  br label %__get_base.exit65

__get_base.exit65:                                ; preds = %if.then.i62, %__get_base.exit
  %retval.0.in.i63 = phi ptr [ %20, %if.then.i62 ], [ %cpu_base, %__get_base.exit ]
  %21 = ptrtoint ptr %retval.0.in.i63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %retval.0.i64 = load ptr, ptr %retval.0.in.i63, align 4
  %22 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %cpu4 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu4, align 4
  %cmp = icmp eq ptr %gic, @gic_data
  br i1 %cmp, label %if.then, label %__get_base.exit65.if.end42_crit_edge

__get_base.exit65.if.end42_crit_edge:             ; preds = %__get_base.exit65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then:                                          ; preds = %__get_base.exit65
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %cmp5 = icmp ugt i32 %25, 7
  br i1 %cmp5, label %do.end, label %do.end30, !prof !129

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 508, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

do.end30:                                         ; preds = %if.then
  %call31 = tail call fastcc zeroext i8 @gic_get_cpumask(ptr noundef nonnull @gic_data)
  %arrayidx = getelementptr [8 x i8], ptr @gic_cpu_map, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call31, ptr %arrayidx, align 1
  %neg = xor i8 %call31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp35.not = icmp eq i32 %25, 0
  br i1 %cmp35.not, label %for.inc.1.thread70, label %for.inc

for.inc.1.thread70:                               ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #15
  %27 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 1), align 1
  %and.171 = and i8 %27, %neg
  store i8 %and.171, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 1), align 1
  br label %for.inc.2.thread74

for.inc:                                          ; preds = %do.end30
  %28 = load i8, ptr @gic_cpu_map, align 1
  %and = and i8 %28, %neg
  store i8 %and, ptr @gic_cpu_map, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp35.not.1 = icmp eq i32 %25, 1
  br i1 %cmp35.not.1, label %for.inc.for.inc.2.thread74_crit_edge, label %for.inc.1

for.inc.for.inc.2.thread74_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.thread74

for.inc.1:                                        ; preds = %for.inc
  %29 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 1), align 1
  %and.1 = and i8 %29, %neg
  store i8 %and.1, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp35.not.2 = icmp eq i32 %25, 2
  br i1 %cmp35.not.2, label %for.inc.1.for.inc.3.thread78_crit_edge, label %for.inc.2

for.inc.1.for.inc.3.thread78_crit_edge:           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.thread78

for.inc.2.thread74:                               ; preds = %for.inc.for.inc.2.thread74_crit_edge, %for.inc.1.thread70
  %30 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 2), align 1
  %and.275 = and i8 %30, %neg
  store i8 %and.275, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 2), align 1
  br label %for.inc.3.thread78

for.inc.2:                                        ; preds = %for.inc.1
  %31 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 2), align 1
  %and.2 = and i8 %31, %neg
  store i8 %and.2, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp35.not.3 = icmp eq i32 %25, 3
  br i1 %cmp35.not.3, label %for.inc.2.for.inc.4.thread82_crit_edge, label %for.inc.3

for.inc.2.for.inc.4.thread82_crit_edge:           ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.thread82

for.inc.3.thread78:                               ; preds = %for.inc.2.thread74, %for.inc.1.for.inc.3.thread78_crit_edge
  %32 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 3), align 1
  %and.379 = and i8 %32, %neg
  store i8 %and.379, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 3), align 1
  br label %for.inc.4.thread82

for.inc.3:                                        ; preds = %for.inc.2
  %33 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 3), align 1
  %and.3 = and i8 %33, %neg
  store i8 %and.3, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp35.not.4 = icmp eq i32 %25, 4
  br i1 %cmp35.not.4, label %for.inc.3.for.inc.5.thread86_crit_edge, label %for.inc.4

for.inc.3.for.inc.5.thread86_crit_edge:           ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.thread86

for.inc.4.thread82:                               ; preds = %for.inc.3.thread78, %for.inc.2.for.inc.4.thread82_crit_edge
  %34 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 4), align 1
  %and.483 = and i8 %34, %neg
  store i8 %and.483, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 4), align 1
  br label %for.inc.5.thread86

for.inc.4:                                        ; preds = %for.inc.3
  %35 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 4), align 1
  %and.4 = and i8 %35, %neg
  store i8 %and.4, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp35.not.5 = icmp eq i32 %25, 5
  br i1 %cmp35.not.5, label %for.inc.4.for.inc.6.thread90_crit_edge, label %for.inc.5

for.inc.4.for.inc.6.thread90_crit_edge:           ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6.thread90

for.inc.5.thread86:                               ; preds = %for.inc.4.thread82, %for.inc.3.for.inc.5.thread86_crit_edge
  %36 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 5), align 1
  %and.587 = and i8 %36, %neg
  store i8 %and.587, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 5), align 1
  br label %for.inc.6.thread90

for.inc.5:                                        ; preds = %for.inc.4
  %37 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 5), align 1
  %and.5 = and i8 %37, %neg
  store i8 %and.5, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 5), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp35.not.6 = icmp eq i32 %25, 6
  br i1 %cmp35.not.6, label %for.inc.5.if.then37.7_crit_edge, label %for.inc.5.if.end42.sink.split_crit_edge

for.inc.5.if.end42.sink.split_crit_edge:          ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.sink.split

for.inc.5.if.then37.7_crit_edge:                  ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37.7

for.inc.6.thread90:                               ; preds = %for.inc.5.thread86, %for.inc.4.for.inc.6.thread90_crit_edge
  %38 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 6), align 1
  %and.691 = and i8 %38, %neg
  store i8 %and.691, ptr getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 6), align 1
  br label %if.then37.7

if.then37.7:                                      ; preds = %for.inc.6.thread90, %for.inc.5.if.then37.7_crit_edge
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.then37.7, %for.inc.5.if.end42.sink.split_crit_edge
  %.sink94 = phi ptr [ getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 7), %if.then37.7 ], [ getelementptr inbounds ([8 x i8], ptr @gic_cpu_map, i32 0, i32 6), %for.inc.5.if.end42.sink.split_crit_edge ]
  %39 = ptrtoint ptr %.sink94 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %.sink94, align 1
  %and.7 = and i8 %40, %neg
  store i8 %and.7, ptr %.sink94, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %__get_base.exit65.if.end42_crit_edge
  tail call void @gic_cpu_config(ptr noundef %retval.0.i, i32 noundef 32, ptr noundef null) #13
  %add.ptr = getelementptr i8, ptr %retval.0.i64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -268435456) #13, !srcloc !136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_cpu_init, %if.then.i.i)) #13
          to label %__get_base.exit.i [label %if.then.i.i], !srcloc !131

if.then.i.i:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %cpu_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cpu_base, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %49, %43
  %50 = inttoptr i32 %add.i.i to ptr
  br label %__get_base.exit.i

__get_base.exit.i:                                ; preds = %if.then.i.i, %if.end42
  %retval.0.in.i.i = phi ptr [ %50, %if.then.i.i ], [ %cpu_base, %if.end42 ]
  %51 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %retval.0.i24.i = load ptr, ptr %retval.0.in.i.i, align 4
  br i1 %cmp, label %land.lhs.true.i, label %__get_base.exit.i.if.end.i_crit_edge

__get_base.exit.i.if.end.i_crit_edge:             ; preds = %__get_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %__get_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @supports_deactivate_key, i32 1), ptr blockaddress(@gic_cpu_init, %52)) #13
          to label %if.end.i [label %52], !srcloc !131

52:                                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %52, %land.lhs.true.i, %__get_base.exit.i.if.end.i_crit_edge
  %mode.0.i = phi i32 [ 1, %__get_base.exit.i.if.end.i_crit_edge ], [ 1, %52 ], [ 513, %land.lhs.true.i ]
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i24.i, i32 252
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !132
  %54 = and i32 %53, -15728896
  call void @__sanitizer_cov_trace_const_cmp4(i32 990118400, i32 %54)
  %cmp.i.i = icmp eq i32 %54, 990118400
  br i1 %cmp.i.i, label %for.cond.preheader.i, label %if.end.i.gic_cpu_if_up.exit_crit_edge

if.end.i.gic_cpu_if_up.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gic_cpu_if_up.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %retval.0.i24.i, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !136
  %add.ptr9.1.i = getelementptr i8, ptr %retval.0.i24.i, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.1.i, i32 0) #13, !srcloc !136
  %add.ptr9.2.i = getelementptr i8, ptr %retval.0.i24.i, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.2.i, i32 0) #13, !srcloc !136
  %add.ptr9.3.i = getelementptr i8, ptr %retval.0.i24.i, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.3.i, i32 0) #13, !srcloc !136
  br label %gic_cpu_if_up.exit

gic_cpu_if_up.exit:                               ; preds = %for.cond.preheader.i, %if.end.i.gic_cpu_if_up.exit_crit_edge
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i24.i) #13, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !137
  %56 = and i32 %55, -536805376
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #13
  %or15.i = or i32 %57, %mode.0.i
  %58 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i24.i, i32 %58) #13, !srcloc !136
  br label %cleanup

cleanup:                                          ; preds = %gic_cpu_if_up.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %gic_cpu_if_up.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @gic_get_cpumask(ptr nocapture noundef readonly %gic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dist_base = getelementptr inbounds %struct.gic_chip_data, ptr %gic, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_get_cpumask, %if.then.i)) #13
          to label %__get_base.exit [label %if.then.i], !srcloc !131

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %dist_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dist_base, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %2
  %9 = inttoptr i32 %add.i to ptr
  br label %__get_base.exit

__get_base.exit:                                  ; preds = %if.then.i, %entry
  %retval.0.in.i = phi ptr [ %9, %if.then.i ], [ %dist_base, %entry ]
  %10 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 2048
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !132
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %shr = lshr i32 %12, 16
  %or = or i32 %shr, %12
  %shr3 = lshr i32 %or, 8
  %or4 = or i32 %shr3, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4)
  %tobool.not = icmp eq i32 %or4, 0
  br i1 %tobool.not, label %for.cond, label %__get_base.exit.if.end11_crit_edge

__get_base.exit.if.end11_crit_edge:               ; preds = %__get_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

for.cond:                                         ; preds = %__get_base.exit
  %add.ptr1.1 = getelementptr i8, ptr %retval.0.i, i32 2052
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.1) #13, !srcloc !132
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %shr.1 = lshr i32 %14, 16
  %or.1 = or i32 %shr.1, %14
  %shr3.1 = lshr i32 %or.1, 8
  %or4.1 = or i32 %shr3.1, %or.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.1)
  %tobool.not.1 = icmp eq i32 %or4.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.if.end11_crit_edge

for.cond.if.end11_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

for.cond.1:                                       ; preds = %for.cond
  %add.ptr1.2 = getelementptr i8, ptr %retval.0.i, i32 2056
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.2) #13, !srcloc !132
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %shr.2 = lshr i32 %16, 16
  %or.2 = or i32 %shr.2, %16
  %shr3.2 = lshr i32 %or.2, 8
  %or4.2 = or i32 %shr3.2, %or.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.2)
  %tobool.not.2 = icmp eq i32 %or4.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.if.end11_crit_edge

for.cond.1.if.end11_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

for.cond.2:                                       ; preds = %for.cond.1
  %add.ptr1.3 = getelementptr i8, ptr %retval.0.i, i32 2060
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.3) #13, !srcloc !132
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %shr.3 = lshr i32 %18, 16
  %or.3 = or i32 %shr.3, %18
  %shr3.3 = lshr i32 %or.3, 8
  %or4.3 = or i32 %shr3.3, %or.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.3)
  %tobool.not.3 = icmp eq i32 %or4.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.if.end11_crit_edge

for.cond.2.if.end11_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

for.cond.3:                                       ; preds = %for.cond.2
  %add.ptr1.4 = getelementptr i8, ptr %retval.0.i, i32 2064
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.4) #13, !srcloc !132
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %shr.4 = lshr i32 %20, 16
  %or.4 = or i32 %shr.4, %20
  %shr3.4 = lshr i32 %or.4, 8
  %or4.4 = or i32 %shr3.4, %or.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.4)
  %tobool.not.4 = icmp eq i32 %or4.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.if.end11_crit_edge

for.cond.3.if.end11_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

for.cond.4:                                       ; preds = %for.cond.3
  %add.ptr1.5 = getelementptr i8, ptr %retval.0.i, i32 2068
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.5) #13, !srcloc !132
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %shr.5 = lshr i32 %22, 16
  %or.5 = or i32 %shr.5, %22
  %shr3.5 = lshr i32 %or.5, 8
  %or4.5 = or i32 %shr3.5, %or.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.5)
  %tobool.not.5 = icmp eq i32 %or4.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.if.end11_crit_edge

for.cond.4.if.end11_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

for.cond.5:                                       ; preds = %for.cond.4
  %add.ptr1.6 = getelementptr i8, ptr %retval.0.i, i32 2072
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.6) #13, !srcloc !132
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %shr.6 = lshr i32 %24, 16
  %or.6 = or i32 %shr.6, %24
  %shr3.6 = lshr i32 %or.6, 8
  %or4.6 = or i32 %shr3.6, %or.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.6)
  %tobool.not.6 = icmp eq i32 %or4.6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %for.cond.5.if.end11_crit_edge

for.cond.5.if.end11_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

for.cond.6:                                       ; preds = %for.cond.5
  %add.ptr1.7 = getelementptr i8, ptr %retval.0.i, i32 2076
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.7) #13, !srcloc !132
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %shr.7 = lshr i32 %26, 16
  %or.7 = or i32 %shr.7, %26
  %shr3.7 = lshr i32 %or.7, 8
  %or4.7 = or i32 %shr3.7, %or.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.7)
  %tobool.not.7 = icmp eq i32 %or4.7, 0
  br i1 %tobool.not.7, label %if.end.i.i, label %for.cond.6.if.end11_crit_edge

for.cond.6.if.end11_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end.i.i:                                       ; preds = %for.cond.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i)
  %cmp7 = icmp ugt i32 %call4.i.i, 1
  br i1 %cmp7, label %do.end, label %if.end.i.i.if.end11_crit_edge

if.end.i.i.if.end11_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

do.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #17
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end.i.i.if.end11_crit_edge, %for.cond.6.if.end11_crit_edge, %for.cond.5.if.end11_crit_edge, %for.cond.4.if.end11_crit_edge, %for.cond.3.if.end11_crit_edge, %for.cond.2.if.end11_crit_edge, %for.cond.1.if.end11_crit_edge, %for.cond.if.end11_crit_edge, %__get_base.exit.if.end11_crit_edge
  %mask.123 = phi i32 [ 0, %do.end ], [ 0, %if.end.i.i.if.end11_crit_edge ], [ %or4, %__get_base.exit.if.end11_crit_edge ], [ %or4.1, %for.cond.if.end11_crit_edge ], [ %or4.2, %for.cond.1.if.end11_crit_edge ], [ %or4.3, %for.cond.2.if.end11_crit_edge ], [ %or4.4, %for.cond.3.if.end11_crit_edge ], [ %or4.5, %for.cond.4.if.end11_crit_edge ], [ %or4.6, %for.cond.5.if.end11_crit_edge ], [ %or4.7, %for.cond.6.if.end11_crit_edge ]
  %conv = trunc i32 %mask.123 to i8
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_cpu_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_eoimode1_mask_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i.i, align 4
  %chip_data.i.i.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i.i.i.i, align 4
  %dist_base.i.i.i = getelementptr inbounds %struct.gic_chip_data, ptr %3, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_eoimode1_mask_irq, %if.then.i.i.i.i)) #13
          to label %gic_mask_irq.exit [label %if.then.i.i.i.i], !srcloc !131

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %dist_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dist_base.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i.i.i to ptr
  br label %gic_mask_irq.exit

gic_mask_irq.exit:                                ; preds = %if.then.i.i.i.i, %entry
  %retval.0.in.i.i.i.i = phi ptr [ %13, %if.then.i.i.i.i ], [ %dist_base.i.i.i, %entry ]
  %rem.i.i = and i32 %1, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #13
  %15 = ptrtoint ptr %retval.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %retval.0.i.i.i.i = load ptr, ptr %retval.0.in.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i.i.i.i, i32 384
  %16 = ptrtoint ptr %hwirq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwirq.i.i.i, align 4
  %18 = lshr i32 %17, 3
  %mul.i.i = and i32 %18, 536870908
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %14) #13, !srcloc !136
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %19 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %common.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %and.i = and i32 %22, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %gic_mask_irq.exit.if.end_crit_edge, label %if.then

gic_mask_irq.exit.if.end_crit_edge:               ; preds = %gic_mask_irq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %gic_mask_irq.exit
  %23 = ptrtoint ptr %hwirq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwirq.i.i.i, align 4
  %25 = ptrtoint ptr %chip_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip_data.i.i.i.i, align 4
  %dist_base.i.i = getelementptr inbounds %struct.gic_chip_data, ptr %26, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_eoimode1_mask_irq, %if.then.i.i.i)) #13
          to label %gic_poke_irq.exit [label %if.then.i.i.i], !srcloc !131

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %dist_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dist_base.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %35, %29
  %36 = inttoptr i32 %add.i.i.i to ptr
  br label %gic_poke_irq.exit

gic_poke_irq.exit:                                ; preds = %if.then.i.i.i, %if.then
  %retval.0.in.i.i.i = phi ptr [ %36, %if.then.i.i.i ], [ %dist_base.i.i, %if.then ]
  %rem.i = and i32 %24, 31
  %shl.i = shl nuw i32 1, %rem.i
  %37 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #13
  %38 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %retval.0.i.i.i = load ptr, ptr %retval.0.in.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i.i, i32 896
  %39 = ptrtoint ptr %hwirq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hwirq.i.i.i, align 4
  %41 = lshr i32 %40, 3
  %mul.i = and i32 %41, 536870908
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %37) #13, !srcloc !136
  br label %if.end

if.end:                                           ; preds = %gic_poke_irq.exit, %gic_mask_irq.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_eoimode1_eoi_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
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
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp ult i32 %5, 16
  br i1 %cmp, label %if.then2, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %9, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !146
  %10 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i29 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i29 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, ptrtoint (ptr @sgi_intid to i32)
  %16 = inttoptr i32 %add to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %19 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i27 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i27 to ptr
  %preempt_count.i.i28 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i28, align 4
  %sub.i = add i32 %22, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i28, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then2, %if.end.if.end22_crit_edge
  %hwirq.0 = phi i32 [ %18, %if.then2 ], [ %5, %if.end.if.end22_crit_edge ]
  %23 = tail call i32 @llvm.bswap.i32(i32 %hwirq.0)
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %24 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip_data.i.i, align 4
  %cpu_base.i = getelementptr inbounds %struct.gic_chip_data, ptr %25, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_eoimode1_eoi_irq, %if.then.i.i)) #13
          to label %gic_cpu_base.exit [label %if.then.i.i], !srcloc !131

if.then.i.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %cpu_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cpu_base.i, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i30 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i30 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %34, %28
  %35 = inttoptr i32 %add.i.i to ptr
  br label %gic_cpu_base.exit

gic_cpu_base.exit:                                ; preds = %if.then.i.i, %if.end22
  %retval.0.in.i.i = phi ptr [ %35, %if.then.i.i ], [ %cpu_base.i, %if.end22 ]
  %36 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i.i, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #13, !srcloc !136
  br label %cleanup

cleanup:                                          ; preds = %gic_cpu_base.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gic_irq_set_vcpu_affinity(ptr nocapture noundef readonly %d, ptr noundef readnone %vcpu) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i.i, align 4
  %handler_data.i.i = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp ult i32 %5, 16
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %vcpu, null
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %and.i = and i32 %7, -1048577
  %masksel = select i1 %tobool.not, i32 0, i32 1048576
  %or.i.sink = or i32 %and.i, %masksel
  store i32 %or.i.sink, ptr %1, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_set_affinity(ptr nocapture noundef readonly %d, ptr noundef %mask_val, i1 noundef zeroext %force) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %dist_base.i = getelementptr inbounds %struct.gic_chip_data, ptr %1, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_set_affinity, %if.then.i.i)) #13
          to label %gic_dist_base.exit [label %if.then.i.i], !srcloc !131

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %dist_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dist_base.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %10, %4
  %11 = inttoptr i32 %add.i.i to ptr
  br label %gic_dist_base.exit

gic_dist_base.exit:                               ; preds = %if.then.i.i, %entry
  %retval.0.in.i.i = phi ptr [ %11, %if.then.i.i ], [ %dist_base.i, %entry ]
  %12 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i.i, i32 2048
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %13 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq.i, align 4
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %force, label %if.else, label %if.end.i.i

if.end.i.i:                                       ; preds = %gic_dist_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i.i = tail call i32 @_find_first_and_bit(ptr noundef %mask_val, ptr noundef nonnull @__cpu_online_mask, i32 noundef %15) #13
  br label %if.end

if.else:                                          ; preds = %gic_dist_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %mask_val, i32 noundef %15) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.i
  %cpu.0 = phi i32 [ %call.i, %if.else ], [ %call6.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cpu.0)
  %cmp = icmp ugt i32 %cpu.0, 7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cpu.0, i32 %16)
  %cmp5.not = icmp ult i32 %cpu.0, %16
  br i1 %cmp5.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @needs_rmw_access, ptr blockaddress(@gic_set_affinity, %if.then13)) #13
          to label %if.else14 [label %if.then13], !srcloc !131

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [8 x i8], ptr @gic_cpu_map, i32 0, i32 %cpu.0
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = ptrtoint ptr %add.ptr2 to i32
  %and.i = and i32 %19, 3
  %mul.i = shl nuw nsw i32 %and.i, 3
  %call.i29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rmw_writeb.rmw_lock) #13
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr2, i32 %idx.neg.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !132
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #13
  %shl.neg.i = shl nsw i32 -1, %mul.i
  %sub4.i = xor i32 %mul.i, 24
  %shr.i = lshr i32 -1, %sub4.i
  %and5.i = and i32 %shr.i, %shl.neg.i
  %neg.i = xor i32 %and5.i, -1
  %and7.i = and i32 %21, %neg.i
  %conv8.i = zext i8 %18 to i32
  %shl9.i = shl nuw i32 %conv8.i, %mul.i
  %or.i = or i32 %and7.i, %shl9.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #13, !srcloc !136
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rmw_writeb.rmw_lock, i32 noundef %call.i29) #13
  br label %if.end16

if.else14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx15 = getelementptr [8 x i8], ptr @gic_cpu_map, i32 0, i32 %cpu.0
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx15, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 %24) #13, !srcloc !148
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then13
  %add.i = add nuw nsw i32 %cpu.0, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %25 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %common.i, align 4
  %effective_affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %effective_affinity.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %effective_affinity.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %29, 31
  %30 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %30, 536870908
  %31 = call ptr @memcpy(ptr %28, ptr %arrayidx.i, i32 %mul.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end16 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_ipi_send_mask(ptr nocapture noundef readonly %d, ptr noundef readonly %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %do.body, !prof !129

if.then:                                          ; preds = %entry
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwirq, align 4
  %or = or i32 %2, 33554432
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_ipi_send_mask, %if.then.i)) #13
          to label %__get_base.exit [label %if.then.i], !srcloc !131

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %4 = load ptr, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i to ptr
  br label %__get_base.exit

__get_base.exit:                                  ; preds = %if.then.i, %if.then
  %retval.0.in.i = phi ptr [ %12, %if.then.i ], [ getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), %if.then ]
  %13 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #13, !srcloc !136
  br label %cleanup

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cpu_map_lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %call435 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call435, i32 %14)
  %cmp536 = icmp ult i32 %call435, %14
  br i1 %cmp536, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body.for.body_crit_edge
  %call438 = phi i32 [ %call4, %for.body.for.body_crit_edge ], [ %call435, %do.body.for.body_crit_edge ]
  %map.037 = phi i32 [ %or8, %for.body.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i8], ptr @gic_cpu_map, i32 0, i32 %call438
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %16 to i32
  %or8 = or i32 %map.037, %conv7
  %call4 = tail call i32 @cpumask_next(i32 noundef %call438, ptr noundef %mask) #19
  %cmp5 = icmp ult i32 %call4, %14
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo = shl i32 %or8, 16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %do.body.for.end_crit_edge
  %map.0.lcssa = phi i32 [ 0, %do.body.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !149
  %hwirq9 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %17 = ptrtoint ptr %hwirq9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwirq9, align 4
  %or10 = or i32 %18, %map.0.lcssa
  %19 = tail call i32 @llvm.bswap.i32(i32 %or10)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_ipi_send_mask, %if.then.i31)) #13
          to label %__get_base.exit34 [label %if.then.i31], !srcloc !131

if.then.i31:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %20 = load ptr, ptr getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i27 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i27 to ptr
  %cpu.i28 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i28, align 4
  %arrayidx.i29 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i29, align 4
  %add.i30 = add i32 %27, %21
  %28 = inttoptr i32 %add.i30 to ptr
  br label %__get_base.exit34

__get_base.exit34:                                ; preds = %if.then.i31, %for.end
  %retval.0.in.i32 = phi ptr [ %28, %if.then.i31 ], [ getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 0, i32 1), %for.end ]
  %29 = ptrtoint ptr %retval.0.in.i32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %retval.0.i33 = load ptr, ptr %retval.0.in.i32, align 4
  %add.ptr12 = getelementptr i8, ptr %retval.0.i33, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %19) #13, !srcloc !136
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cpu_map_lock, i32 noundef %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %__get_base.exit34, %__get_base.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_mask_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i, align 4
  %chip_data.i.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i.i.i, align 4
  %dist_base.i.i = getelementptr inbounds %struct.gic_chip_data, ptr %3, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_mask_irq, %if.then.i.i.i)) #13
          to label %gic_poke_irq.exit [label %if.then.i.i.i], !srcloc !131

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %dist_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dist_base.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i.i to ptr
  br label %gic_poke_irq.exit

gic_poke_irq.exit:                                ; preds = %if.then.i.i.i, %entry
  %retval.0.in.i.i.i = phi ptr [ %13, %if.then.i.i.i ], [ %dist_base.i.i, %entry ]
  %rem.i = and i32 %1, 31
  %shl.i = shl nuw i32 1, %rem.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #13
  %15 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %retval.0.i.i.i = load ptr, ptr %retval.0.in.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i.i, i32 384
  %16 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwirq.i.i, align 4
  %18 = lshr i32 %17, 3
  %mul.i = and i32 %18, 536870908
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %14) #13, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_unmask_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i, align 4
  %chip_data.i.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i.i.i, align 4
  %dist_base.i.i = getelementptr inbounds %struct.gic_chip_data, ptr %3, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_unmask_irq, %if.then.i.i.i)) #13
          to label %gic_poke_irq.exit [label %if.then.i.i.i], !srcloc !131

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %dist_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dist_base.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i.i to ptr
  br label %gic_poke_irq.exit

gic_poke_irq.exit:                                ; preds = %if.then.i.i.i, %entry
  %retval.0.in.i.i.i = phi ptr [ %13, %if.then.i.i.i ], [ %dist_base.i.i, %entry ]
  %rem.i = and i32 %1, 31
  %shl.i = shl nuw i32 1, %rem.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #13
  %15 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %retval.0.i.i.i = load ptr, ptr %retval.0.in.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i.i, i32 256
  %16 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwirq.i.i, align 4
  %18 = lshr i32 %17, 3
  %mul.i = and i32 %18, 536870908
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %14) #13, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gic_eoi_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ult i32 %1, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !150
  %6 = tail call i32 @llvm.read_register.i32(metadata !119) #13
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
  %add = add i32 %11, ptrtoint (ptr @sgi_intid to i32)
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !151
  %15 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i23 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i23 to ptr
  %preempt_count.i.i24 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i24, align 4
  %sub.i = add i32 %18, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i24, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hwirq.0 = phi i32 [ %14, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %19 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip_data.i.i, align 4
  %cpu_base.i = getelementptr inbounds %struct.gic_chip_data, ptr %20, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_eoi_irq, %if.then.i.i)) #13
          to label %gic_cpu_base.exit [label %if.then.i.i], !srcloc !131

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %cpu_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpu_base.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i25 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i25 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i.i to ptr
  br label %gic_cpu_base.exit

gic_cpu_base.exit:                                ; preds = %if.then.i.i, %if.end
  %retval.0.in.i.i = phi ptr [ %30, %if.then.i.i ], [ %cpu_base.i, %if.end ]
  %31 = tail call i32 @llvm.bswap.i32(i32 %hwirq.0)
  %32 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i.i, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %31) #13, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_retrigger(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i.i, align 4
  %chip_data.i.i.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i.i.i.i, align 4
  %dist_base.i.i.i = getelementptr inbounds %struct.gic_chip_data, ptr %3, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_retrigger, %if.then.i.i.i.i)) #13
          to label %gic_irq_set_irqchip_state.exit [label %if.then.i.i.i.i], !srcloc !131

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %dist_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dist_base.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i.i.i to ptr
  br label %gic_irq_set_irqchip_state.exit

gic_irq_set_irqchip_state.exit:                   ; preds = %if.then.i.i.i.i, %entry
  %retval.0.in.i.i.i.i = phi ptr [ %13, %if.then.i.i.i.i ], [ %dist_base.i.i.i, %entry ]
  %rem.i.i = and i32 %1, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #13
  %15 = ptrtoint ptr %retval.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %retval.0.i.i.i.i = load ptr, ptr %retval.0.in.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i.i.i.i, i32 512
  %16 = ptrtoint ptr %hwirq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwirq.i.i.i, align 4
  %18 = lshr i32 %17, 3
  %mul.i.i = and i32 %18, 536870908
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %14) #13, !srcloc !136
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %dist_base.i = getelementptr inbounds %struct.gic_chip_data, ptr %1, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_set_type, %if.then.i.i)) #13
          to label %gic_dist_base.exit [label %if.then.i.i], !srcloc !131

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %dist_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dist_base.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %10, %4
  %11 = inttoptr i32 %add.i.i to ptr
  br label %gic_dist_base.exit

gic_dist_base.exit:                               ; preds = %if.then.i.i, %entry
  %retval.0.in.i.i = phi ptr [ %11, %if.then.i.i ], [ %dist_base.i, %entry ]
  %12 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %13 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %cmp = icmp ult i32 %14, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %gic_dist_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp2.not = icmp eq i32 %type, 1
  %cond = select i1 %cmp2.not, i32 0, i32 -22
  br label %cleanup

if.end:                                           ; preds = %gic_dist_base.exit
  %.fr = freeze i32 %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.fr)
  %cmp3 = icmp ult i32 %.fr, 32
  br i1 %cmp3, label %if.end8.thread, label %switch.early.test

switch.early.test:                                ; preds = %if.end
  %15 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %switch.early.test.cleanup_crit_edge [
    i32 4, label %switch.early.test.if.end8_crit_edge
    i32 1, label %switch.early.test.if.end8_crit_edge32
  ]

switch.early.test.if.end8_crit_edge32:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

switch.early.test.if.end8_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %switch.early.test.if.end8_crit_edge, %switch.early.test.if.end8_crit_edge32
  %add.ptr = getelementptr i8, ptr %retval.0.i.i, i32 3072
  %call9 = tail call i32 @gic_configure_irq(i32 noundef %.fr, i32 noundef %type, ptr noundef %add.ptr, ptr noundef null) #13
  br label %cleanup

if.end8.thread:                                   ; preds = %if.end
  %add.ptr27 = getelementptr i8, ptr %retval.0.i.i, i32 3072
  %call928 = tail call i32 @gic_configure_irq(i32 noundef %.fr, i32 noundef %type, ptr noundef %add.ptr27, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call928)
  %tobool.not29 = icmp eq i32 %call928, 0
  br i1 %tobool.not29, label %if.end8.thread.cleanup_crit_edge, label %do.end

if.end8.thread.cleanup_crit_edge:                 ; preds = %if.end8.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end8.thread
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add nsw i32 %.fr, -16
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %sub) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.thread.cleanup_crit_edge, %if.end8, %switch.early.test.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ -22, %switch.early.test.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end8.thread.cleanup_crit_edge ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_irq_get_irqchip_state(ptr nocapture noundef readonly %d, i32 noundef %which, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %which, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwirq.i.i, align 4
  %chip_data.i.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %3 = ptrtoint ptr %chip_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_data.i.i.i, align 4
  %dist_base.i.i = getelementptr inbounds %struct.gic_chip_data, ptr %4, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_irq_get_irqchip_state, %if.then.i.i.i)) #13
          to label %gic_peek_irq.exit [label %if.then.i.i.i], !srcloc !131

if.then.i.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %dist_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dist_base.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i.i.i to ptr
  br label %gic_peek_irq.exit

gic_peek_irq.exit:                                ; preds = %if.then.i.i.i, %sw.bb
  %retval.0.in.i.i.i = phi ptr [ %14, %if.then.i.i.i ], [ %dist_base.i.i, %sw.bb ]
  %rem.i = and i32 %2, 31
  %15 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %retval.0.i.i.i = load ptr, ptr %retval.0.in.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i.i, i32 512
  %16 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwirq.i.i, align 4
  %18 = lshr i32 %17, 3
  %mul.i = and i32 %18, 536870908
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #13, !srcloc !132
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #13
  %21 = shl nuw i32 1, %rem.i
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool = icmp ne i32 %22, 0
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %hwirq.i.i13 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %23 = ptrtoint ptr %hwirq.i.i13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwirq.i.i13, align 4
  %chip_data.i.i.i14 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %25 = ptrtoint ptr %chip_data.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip_data.i.i.i14, align 4
  %dist_base.i.i15 = getelementptr inbounds %struct.gic_chip_data, ptr %26, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_irq_get_irqchip_state, %if.then.i.i.i20)) #13
          to label %gic_peek_irq.exit27 [label %if.then.i.i.i20], !srcloc !131

if.then.i.i.i20:                                  ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %dist_base.i.i15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dist_base.i.i15, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i16 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i16 to ptr
  %cpu.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i.i.i17, align 4
  %arrayidx.i.i.i18 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i18, align 4
  %add.i.i.i19 = add i32 %35, %29
  %36 = inttoptr i32 %add.i.i.i19 to ptr
  br label %gic_peek_irq.exit27

gic_peek_irq.exit27:                              ; preds = %if.then.i.i.i20, %sw.bb1
  %retval.0.in.i.i.i21 = phi ptr [ %36, %if.then.i.i.i20 ], [ %dist_base.i.i15, %sw.bb1 ]
  %rem.i22 = and i32 %24, 31
  %37 = ptrtoint ptr %retval.0.in.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %retval.0.i.i.i23 = load ptr, ptr %retval.0.in.i.i.i21, align 4
  %add.ptr.i24 = getelementptr i8, ptr %retval.0.i.i.i23, i32 768
  %38 = ptrtoint ptr %hwirq.i.i13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hwirq.i.i13, align 4
  %40 = lshr i32 %39, 3
  %mul.i25 = and i32 %40, 536870908
  %add.ptr3.i26 = getelementptr i8, ptr %add.ptr.i24, i32 %mul.i25
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i26) #13, !srcloc !132
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #13
  %43 = shl nuw i32 1, %rem.i22
  %44 = and i32 %42, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool3 = icmp ne i32 %44, 0
  br label %return.sink.split

sw.bb5:                                           ; preds = %entry
  %hwirq.i.i28 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %45 = ptrtoint ptr %hwirq.i.i28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hwirq.i.i28, align 4
  %chip_data.i.i.i29 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %47 = ptrtoint ptr %chip_data.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip_data.i.i.i29, align 4
  %dist_base.i.i30 = getelementptr inbounds %struct.gic_chip_data, ptr %48, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_irq_get_irqchip_state, %if.then.i.i.i35)) #13
          to label %gic_peek_irq.exit42 [label %if.then.i.i.i35], !srcloc !131

if.then.i.i.i35:                                  ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %dist_base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dist_base.i.i30, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i31 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i31 to ptr
  %cpu.i.i.i32 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i.i.i32, align 4
  %arrayidx.i.i.i33 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i.i33, align 4
  %add.i.i.i34 = add i32 %57, %51
  %58 = inttoptr i32 %add.i.i.i34 to ptr
  br label %gic_peek_irq.exit42

gic_peek_irq.exit42:                              ; preds = %if.then.i.i.i35, %sw.bb5
  %retval.0.in.i.i.i36 = phi ptr [ %58, %if.then.i.i.i35 ], [ %dist_base.i.i30, %sw.bb5 ]
  %rem.i37 = and i32 %46, 31
  %59 = ptrtoint ptr %retval.0.in.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %59)
  %retval.0.i.i.i38 = load ptr, ptr %retval.0.in.i.i.i36, align 4
  %add.ptr.i39 = getelementptr i8, ptr %retval.0.i.i.i38, i32 256
  %60 = ptrtoint ptr %hwirq.i.i28 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hwirq.i.i28, align 4
  %62 = lshr i32 %61, 3
  %mul.i40 = and i32 %62, 536870908
  %add.ptr3.i41 = getelementptr i8, ptr %add.ptr.i39, i32 %mul.i40
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i41) #13, !srcloc !132
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #13
  %65 = shl nuw i32 1, %rem.i37
  %66 = and i32 %64, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool7.not = icmp eq i32 %66, 0
  br label %return.sink.split

return.sink.split:                                ; preds = %gic_peek_irq.exit42, %gic_peek_irq.exit27, %gic_peek_irq.exit
  %tobool.sink = phi i1 [ %tobool, %gic_peek_irq.exit ], [ %tobool3, %gic_peek_irq.exit27 ], [ %tobool7.not, %gic_peek_irq.exit42 ]
  %frombool = zext i1 %tobool.sink to i8
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool, ptr %val, align 1
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_irq_set_irqchip_state(ptr nocapture noundef readonly %d, i32 noundef %which, i1 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %which, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cond = select i1 %val, i32 512, i32 640
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cond3 = select i1 %val, i32 768, i32 896
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cond6 = select i1 %val, i32 384, i32 256
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %reg.0 = phi i32 [ %cond6, %sw.bb4 ], [ %cond3, %sw.bb1 ], [ %cond, %sw.bb ]
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwirq.i.i, align 4
  %chip_data.i.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %3 = ptrtoint ptr %chip_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_data.i.i.i, align 4
  %dist_base.i.i = getelementptr inbounds %struct.gic_chip_data, ptr %4, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frankengic_key, ptr blockaddress(@gic_irq_set_irqchip_state, %if.then.i.i.i)) #13
          to label %gic_poke_irq.exit [label %if.then.i.i.i], !srcloc !131

if.then.i.i.i:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %dist_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dist_base.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !119) #13
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i.i.i to ptr
  br label %gic_poke_irq.exit

gic_poke_irq.exit:                                ; preds = %if.then.i.i.i, %sw.epilog
  %retval.0.in.i.i.i = phi ptr [ %14, %if.then.i.i.i ], [ %dist_base.i.i, %sw.epilog ]
  %rem.i = and i32 %2, 31
  %shl.i = shl nuw i32 1, %rem.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #13
  %16 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.i.i = load ptr, ptr %retval.0.in.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i.i, i32 %reg.0
  %17 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwirq.i.i, align 4
  %19 = lshr i32 %18, 3
  %mul.i = and i32 %19, 536870908
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %15) #13, !srcloc !136
  br label %cleanup

cleanup:                                          ; preds = %gic_poke_irq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %gic_poke_irq.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_configure_irq(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_and_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_enable_of_quirks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gic_enable_rmw_access(ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @static_key_enable(ptr noundef nonnull @needs_rmw_access) #13
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %0 = xor i1 %tobool.not, true
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  %hwirq = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwirq) #13
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hwirq, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #13
  %call = call i32 @gic_irq_domain_translate(ptr noundef %domain, ptr noundef %arg, ptr noundef nonnull %hwirq, ptr noundef nonnull %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp17.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp17.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwirq, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add i32 %i.018, %virq
  %add1 = add i32 %2, %i.018
  %call2 = tail call i32 @gic_irq_domain_map(ptr noundef %domain, i32 noundef %add, i32 noundef %add1)
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwirq) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_top(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_irq_domain_translate(ptr nocapture noundef readnone %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %0 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
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
  br i1 %spec.select.i.i, label %if.end.if.end40_crit_edge, label %is_of_node.exit

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

is_of_node.exit:                                  ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %9, @of_fwnode_ops
  br i1 %cmp.i, label %if.then4, label %is_of_node.exit.if.end40_crit_edge

is_of_node.exit.if.end40_crit_edge:               ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then4:                                         ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp6 = icmp slt i32 %1, 3
  br i1 %cmp6, label %if.then4.return_crit_edge, label %if.end8

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end8:                                          ; preds = %if.then4
  %param9 = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %10 = ptrtoint ptr %param9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %param9, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %11, label %if.end8.return_crit_edge [
    i32 0, label %if.end8.sw.epilog_crit_edge
    i32 1, label %sw.bb13
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb13:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %if.end8.sw.epilog_crit_edge
  %.sink108 = phi i32 [ 16, %sw.bb13 ], [ 32, %if.end8.sw.epilog_crit_edge ]
  %arrayidx15 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %14, %.sink108
  %15 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add16, ptr %hwirq, align 4
  %arrayidx18 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx18, align 4
  %and = and i32 %17, 15
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp19 = icmp eq i32 %and, 0
  br i1 %cmp19, label %do.end, label %sw.epilog.return_crit_edge, !prof !129

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1080, i32 noundef 9, ptr noundef null) #13
  br label %return

if.end40:                                         ; preds = %is_of_node.exit.if.end40_crit_edge, %if.end.if.end40_crit_edge
  br i1 %tobool.not.i.i, label %if.end40.return_crit_edge, label %is_fwnode_irqchip.exit

if.end40.return_crit_edge:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

is_fwnode_irqchip.exit:                           ; preds = %if.end40
  %ops.i105 = getelementptr inbounds %struct.fwnode_handle, ptr %7, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i105 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i105, align 4
  %cmp.i106 = icmp eq ptr %20, @irqchip_fwnode_ops
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp45.not = icmp eq i32 %1, 2
  %or.cond = select i1 %cmp.i106, i1 %cmp45.not, i1 false
  br i1 %or.cond, label %if.end47, label %is_fwnode_irqchip.exit.return_crit_edge

is_fwnode_irqchip.exit.return_crit_edge:          ; preds = %is_fwnode_irqchip.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end47:                                         ; preds = %is_fwnode_irqchip.exit
  %param48 = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %21 = ptrtoint ptr %param48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %param48, align 4
  %23 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %hwirq, align 4
  %arrayidx51 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx51, align 4
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp53 = icmp eq i32 %25, 0
  br i1 %cmp53, label %do.end69, label %if.end47.return_crit_edge, !prof !129

if.end47.return_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end69:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1091, i32 noundef 9, ptr noundef null) #13
  br label %return

return:                                           ; preds = %do.end69, %if.end47.return_crit_edge, %is_fwnode_irqchip.exit.return_crit_edge, %if.end40.return_crit_edge, %do.end, %sw.epilog.return_crit_edge, %if.end8.return_crit_edge, %if.then4.return_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.then4.return_crit_edge ], [ -22, %if.end8.return_crit_edge ], [ 0, %do.end ], [ 0, %sw.epilog.return_crit_edge ], [ 0, %do.end69 ], [ 0, %if.end47.return_crit_edge ], [ -22, %is_fwnode_irqchip.exit.return_crit_edge ], [ -22, %if.end40.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_irq_domain_map(ptr noundef %d, i32 noundef %irq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %hw)
  %switch = icmp ult i32 %hw, 32
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @irq_set_percpu_devid(i32 noundef %irq) #13
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %d, i32 noundef %irq, i32 noundef %hw, ptr noundef %1, ptr noundef %3, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null, ptr noundef null) #13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %d, i32 noundef %irq, i32 noundef %hw, ptr noundef %1, ptr noundef %5, ptr noundef nonnull @handle_fasteoi_irq, ptr noundef null, ptr noundef null) #13
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 1024, i32 noundef 0) #13
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %or.i = or i32 %9, 16777216
  store i32 %or.i, ptr %7, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %common.i18 = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %common.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common.i18, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %or.i19 = or i32 %13, 268435456
  store i32 %or.i19, ptr %11, align 4
  ret i32 0
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gic_irq_domain_unmap(ptr nocapture noundef %d, i32 noundef %irq) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gic_notifier(ptr nocapture noundef readnone %self, i32 noundef %cmd, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %cmd, label %entry.for.inc.1_crit_edge [
    i32 0, label %for.inc.thread
    i32 1, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb1_crit_edge14
    i32 3, label %for.inc.thread13
    i32 4, label %entry.sw.bb5_crit_edge
    i32 5, label %entry.sw.bb5_crit_edge15
  ]

entry.sw.bb5_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

entry.sw.bb1_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.for.inc.1_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

for.inc.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gic_cpu_save(ptr noundef nonnull @gic_data)
  tail call void @gic_cpu_save(ptr noundef getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 1))
  br label %for.inc.1

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge14
  tail call void @gic_cpu_restore(ptr noundef nonnull @gic_data)
  br label %for.inc

for.inc.thread13:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gic_dist_save(ptr noundef nonnull @gic_data)
  tail call void @gic_dist_save(ptr noundef getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 1))
  br label %for.inc.1

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge15
  tail call void @gic_dist_restore(ptr noundef nonnull @gic_data)
  br label %for.inc

for.inc:                                          ; preds = %sw.bb5, %sw.bb1
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %cmd, label %for.inc.for.inc.1_crit_edge [
    i32 5, label %for.inc.sw.bb5.1_crit_edge
    i32 1, label %for.inc.sw.bb1.1_crit_edge
    i32 2, label %for.inc.sw.bb1.1_crit_edge16
    i32 4, label %for.inc.sw.bb5.1_crit_edge17
  ]

for.inc.sw.bb5.1_crit_edge17:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5.1

for.inc.sw.bb1.1_crit_edge16:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1.1

for.inc.sw.bb1.1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1.1

for.inc.sw.bb5.1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

sw.bb5.1:                                         ; preds = %for.inc.sw.bb5.1_crit_edge, %for.inc.sw.bb5.1_crit_edge17
  tail call void @gic_dist_restore(ptr noundef getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 1))
  br label %for.inc.1

sw.bb1.1:                                         ; preds = %for.inc.sw.bb1.1_crit_edge, %for.inc.sw.bb1.1_crit_edge16
  tail call void @gic_cpu_restore(ptr noundef getelementptr inbounds ([2 x %struct.gic_chip_data], ptr @gic_data, i32 0, i32 1))
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.bb1.1, %sw.bb5.1, %for.inc.for.inc.1_crit_edge, %for.inc.thread13, %for.inc.thread, %entry.for.inc.1_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshr.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !54, !55, !56, !57, !59, !61, !63, !64, !65, !66, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117}
!llvm.named.register.sp = !{!119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-gic.c", i32 561, i32 6}
!2 = !{ptr @__setup_gicv2_force_probe_cfg, !3, !"__setup_gicv2_force_probe_cfg", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-gic.c", i32 1322, i32 1}
!4 = !{ptr @__of_table_gic_400, !5, !"__of_table_gic_400", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-gic.c", i32 1551, i32 1}
!6 = !{ptr @__of_table_arm11mp_gic, !7, !"__of_table_arm11mp_gic", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-gic.c", i32 1552, i32 1}
!8 = !{ptr @__of_table_arm1176jzf_dc_gic, !9, !"__of_table_arm1176jzf_dc_gic", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-gic.c", i32 1553, i32 1}
!10 = !{ptr @__of_table_cortex_a15_gic, !11, !"__of_table_cortex_a15_gic", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-gic.c", i32 1554, i32 1}
!12 = !{ptr @__of_table_cortex_a9_gic, !13, !"__of_table_cortex_a9_gic", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-gic.c", i32 1555, i32 1}
!14 = !{ptr @__of_table_cortex_a7_gic, !15, !"__of_table_cortex_a7_gic", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-gic.c", i32 1556, i32 1}
!16 = !{ptr @__of_table_msm_8660_qgic, !17, !"__of_table_msm_8660_qgic", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-gic.c", i32 1557, i32 1}
!18 = !{ptr @__of_table_msm_qgic2, !19, !"__of_table_msm_qgic2", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-gic.c", i32 1558, i32 1}
!20 = !{ptr @__of_table_pl390, !21, !"__of_table_pl390", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-gic.c", i32 1559, i32 1}
!22 = !{ptr @gic_cpu_map, !23, !"gic_cpu_map", i1 false, i1 false}
!23 = !{!"../drivers/irqchip/irq-gic.c", i32 118, i32 11}
!24 = !{ptr @gic_data, !25, !"gic_data", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-gic.c", i32 122, i32 29}
!26 = !{ptr @__pcpu_unique_sgi_intid, !27, !"__pcpu_unique_sgi_intid", i1 false, i1 false}
!27 = !{!"../drivers/irqchip/irq-gic.c", i32 126, i32 8}
!28 = !{ptr @sgi_intid, !27, !"sgi_intid", i1 false, i1 false}
!29 = !{ptr @gic_dist_physaddr, !30, !"gic_dist_physaddr", i1 false, i1 false}
!30 = !{!"../drivers/irqchip/irq-gic.c", i32 1000, i32 22}
!31 = !{ptr @gic_cnt, !32, !"gic_cnt", i1 false, i1 false}
!32 = !{!"../drivers/irqchip/irq-gic.c", i32 1315, i32 12}
!33 = !{ptr @frankengic_key, !34, !"frankengic_key", i1 false, i1 false}
!34 = !{!"../drivers/irqchip/irq-gic.c", i32 129, i32 8}
!35 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/irqchip/irq-gic.c", i32 90, i32 8}
!37 = !{ptr @cpu_map_lock, !36, !"cpu_map_lock", i1 false, i1 false}
!38 = !{ptr @supports_deactivate_key, !39, !"supports_deactivate_key", i1 false, i1 false}
!39 = !{!"../drivers/irqchip/irq-gic.c", i32 120, i32 8}
!40 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/irqchip/irq-gic.c", i32 1266, i32 4}
!42 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__gic_init_bases._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @__gic_init_bases._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/irqchip/irq-gic.c", i32 1270, i32 32}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/irqchip/irq-gic.c", i32 1273, i32 32}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/irqchip/irq-gic.c", i32 866, i32 7}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/irqchip/irq-gic.c", i32 434, i32 3}
!53 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @gic_get_cpumask._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @gic_get_cpumask._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @__setup_str_gicv2_force_probe_cfg, !3, !"__setup_str_gicv2_force_probe_cfg", i1 false, i1 false}
!57 = !{ptr @gicv2_force_probe, !58, !"gicv2_force_probe", i1 false, i1 false}
!58 = !{!"../drivers/irqchip/irq-gic.c", i32 1316, i32 13}
!59 = !{ptr @gic_chip, !60, !"gic_chip", i1 false, i1 false}
!60 = !{!"../drivers/irqchip/irq-gic.c", i32 400, i32 30}
!61 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/irqchip/irq-gic.c", i32 311, i32 3}
!63 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @gic_set_type._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @gic_set_type._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @needs_rmw_access, !67, !"needs_rmw_access", i1 false, i1 false}
!67 = !{!"../drivers/irqchip/irq-gic.c", i32 110, i32 8}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/irqchip/irq-gic.c", i32 781, i32 9}
!70 = !{ptr @rmw_writeb.rmw_lock, !69, !"rmw_lock", i1 false, i1 false}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/irqchip/irq-gic.c", i32 1432, i32 6}
!73 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/irqchip/irq-gic.c", i32 1436, i32 6}
!75 = !{ptr @.str.17, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/irqchip/irq-gic.c", i32 1439, i32 33}
!77 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/irqchip/irq-gic.c", i32 1419, i32 12}
!79 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/irqchip/irq-gic.c", i32 1420, i32 17}
!81 = !{ptr @gic_quirks, !82, !"gic_quirks", i1 false, i1 false}
!82 = !{!"../drivers/irqchip/irq-gic.c", i32 1417, i32 31}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/irqchip/irq-gic.c", i32 1409, i32 31}
!85 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/irqchip/irq-gic.c", i32 1180, i32 3}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/irqchip/irq-gic.c", i32 1213, i32 4}
!89 = !{ptr @gic_irq_domain_hierarchy_ops, !90, !"gic_irq_domain_hierarchy_ops", i1 false, i1 false}
!90 = !{!"../drivers/irqchip/irq-gic.c", i32 1119, i32 36}
!91 = !{ptr @gic_irq_domain_ops, !92, !"gic_irq_domain_ops", i1 false, i1 false}
!92 = !{!"../drivers/irqchip/irq-gic.c", i32 1125, i32 36}
!93 = !{ptr @gic_notifier_block, !94, !"gic_notifier_block", i1 false, i1 false}
!94 = !{!"../drivers/irqchip/irq-gic.c", i32 738, i32 30}
!95 = !{ptr @.str.23, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/irqchip/irq-gic.c", i32 1342, i32 4}
!97 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @gic_check_eoimode._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @gic_check_eoimode._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.26, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/irqchip/irq-gic.c", i32 1355, i32 4}
!102 = !{ptr @gic_check_eoimode._entry.25, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @gic_check_eoimode._entry_ptr.27, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.29, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/irqchip/irq-gic.c", i32 1372, i32 3}
!106 = !{ptr @gic_check_eoimode._entry.28, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @gic_check_eoimode._entry_ptr.30, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/irqchip/irq-gic.c", i32 1395, i32 3}
!110 = !{ptr @gic_check_eoimode._entry.31, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @gic_check_eoimode._entry_ptr.33, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/irqchip/irq-gic.c", i32 1014, i32 3}
!114 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @gic_init_physaddr._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @gic_init_physaddr._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @gic_v2_kvm_info, !118, !"gic_v2_kvm_info", i1 false, i1 false}
!118 = !{!"../drivers/irqchip/irq-gic.c", i32 124, i32 28}
!119 = !{!"sp"}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i64 2154962346, i64 2154962836, i64 2154962383, i64 2154962439, i64 2154962473, i64 2154962497, i64 2154962538, i64 2154962559, i64 2154962587, i64 2154962621}
!131 = !{i64 2148733449, i64 2148733454, i64 2148733467, i64 2148733511, i64 2148733545, i64 2148733566}
!132 = !{i64 4851064}
!133 = !{i64 2154961776}
!134 = !{!"branch_weights", i32 2000, i32 1}
!135 = !{i64 2154969581}
!136 = !{i64 4850646}
!137 = !{i64 2154967357}
!138 = !{i64 2154992126, i64 2154992616, i64 2154992163, i64 2154992219, i64 2154992253, i64 2154992277, i64 2154992318, i64 2154992339, i64 2154992367, i64 2154992401}
!139 = !{i32 0, i32 33}
!140 = !{i8 0, i8 2}
!141 = !{i64 2154952727}
!142 = !{i64 2154952891}
!143 = !{i64 656599, i64 656660}
!144 = !{i64 659331}
!145 = !{i64 659616}
!146 = !{i64 2154913564}
!147 = !{i64 2154929322}
!148 = !{i64 4850449}
!149 = !{i64 2154990443}
!150 = !{i64 2154838976}
!151 = !{i64 2154854734}
!152 = !{!"auto-init"}
