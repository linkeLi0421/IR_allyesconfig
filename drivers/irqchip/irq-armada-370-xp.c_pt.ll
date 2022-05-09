; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-armada-370-xp.c_pt.bc'
source_filename = "../drivers/irqchip/irq-armada-370-xp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.43, %union.anon.44, %union.anon.45 }
%union.anon.43 = type { i32 }
%union.anon.44 = type { i32 }
%union.anon.45 = type { i32 }

@__of_table_armada_370_xp_mpic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mpic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_370_xp_mpic_of_init }, section "__irqchip_of_table", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@main_int_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@per_cpu_int_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@armada_370_xp_mpic_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @armada_370_xp_mpic_irq_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@armada_370_xp_mpic_domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@parent_irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"irqchip/armada/ipi:starting\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"irqchip/armada/cascade:starting\00", [32 x i8] zeroinitializer }, align 32
@armada_370_xp_mpic_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @armada_370_xp_mpic_suspend, ptr @armada_370_xp_mpic_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@armada_370_xp_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_irq_mask, ptr @armada_370_xp_irq_mask, ptr @armada_370_xp_irq_unmask, ptr null, ptr @armada_xp_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 20 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MPIC\00", [27 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@irq_controller_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq_controller_lock\00", [44 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@msi_doorbell_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@armada_370_xp_msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_msi_alloc, ptr @armada_370_xp_msi_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@armada_370_xp_msi_inner_domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@armada_370_xp_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 15, ptr null, ptr @armada_370_xp_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@armada_370_xp_msi_domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@msi_used_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @msi_used_lock, i64 52), ptr getelementptr (i8, ptr @msi_used_lock, i64 52) }, ptr @msi_used_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@msi_used = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@armada_370_xp_msi_bottom_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msi_used_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msi_used_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MPIC MSI\00", [23 x i8] zeroinitializer }, align 32
@armada_370_xp_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_msi_mask_irq, ptr null, ptr @pci_msi_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@ipi_domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ipi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_ipi_alloc, ptr @armada_370_xp_ipi_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/irqchip/irq-armada-370-xp.c\00", [60 x i8] zeroinitializer }, align 32
@ipi_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_ipi_ack, ptr @armada_370_xp_ipi_mask, ptr null, ptr @armada_370_xp_ipi_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_ipi_send_mask, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IPI\00", [28 x i8] zeroinitializer }, align 32
@doorbell_mask_reg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16777216]
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"main_int_base\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 147, i32 22 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"per_cpu_int_base\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 146, i32 22 }
@___asan_gen_.15 = private unnamed_addr constant [27 x i8] c"armada_370_xp_mpic_irq_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 562, i32 36 }
@___asan_gen_.18 = private unnamed_addr constant [26 x i8] c"armada_370_xp_mpic_domain\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 148, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"parent_irq\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 150, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 778, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 784, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant [31 x i8] c"armada_370_xp_mpic_syscore_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 723, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"armada_370_xp_irq_chip\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 526, i32 24 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 527, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"irq_controller_lock\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 437, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"msi_doorbell_addr\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 156, i32 20 }
@___asan_gen_.48 = private unnamed_addr constant [29 x i8] c"armada_370_xp_msi_domain_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 262, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant [31 x i8] c"armada_370_xp_msi_inner_domain\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 153, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"armada_370_xp_msi_domain_info\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 204, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant [25 x i8] c"armada_370_xp_msi_domain\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 152, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"msi_used_lock\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [9 x i8] c"msi_used\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 154, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant [34 x i8] c"armada_370_xp_msi_bottom_irq_chip\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 223, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 155, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 224, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"armada_370_xp_msi_irq_chip\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 198, i32 24 }
@___asan_gen_.81 = private unnamed_addr constant [11 x i8] c"ipi_domain\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 319, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"ipi_domain_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 395, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 425, i32 6 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"ipi_irqchip\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 363, i32 24 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 364, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"doorbell_mask_reg\00", align 1
@___asan_gen_.97 = private constant [39 x i8] c"../drivers/irqchip/irq-armada-370-xp.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 149, i32 12 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__of_table_armada_370_xp_mpic, ptr @main_int_base, ptr @per_cpu_int_base, ptr @armada_370_xp_mpic_irq_ops, ptr @armada_370_xp_mpic_domain, ptr @parent_irq, ptr @.str, ptr @.str.1, ptr @armada_370_xp_mpic_syscore_ops, ptr @armada_370_xp_irq_chip, ptr @.str.2, ptr @irq_controller_lock, ptr @.str.3, ptr @msi_doorbell_addr, ptr @armada_370_xp_msi_domain_ops, ptr @armada_370_xp_msi_inner_domain, ptr @armada_370_xp_msi_domain_info, ptr @armada_370_xp_msi_domain, ptr @msi_used_lock, ptr @msi_used, ptr @armada_370_xp_msi_bottom_irq_chip, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @armada_370_xp_msi_irq_chip, ptr @ipi_domain, ptr @ipi_domain_ops, ptr @.str.7, ptr @ipi_irqchip, ptr @.str.8, ptr @doorbell_mask_reg], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_int_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_cpu_int_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_mpic_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_mpic_domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parent_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_mpic_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_controller_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_doorbell_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_msi_inner_domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_msi_domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_used_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_used to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_msi_bottom_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipi_domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipi_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doorbell_mask_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_xp_mpic_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  %main_int_res = alloca %struct.resource, align 4
  %per_cpu_int_res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %main_int_res) #10
  %0 = getelementptr inbounds %struct.resource, ptr %main_int_res, i32 0, i32 1
  %1 = call ptr @memset(ptr %main_int_res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %per_cpu_int_res) #10
  %2 = getelementptr inbounds %struct.resource, ptr %per_cpu_int_res, i32 0, i32 1
  %3 = call ptr @memset(ptr %per_cpu_int_res, i32 255, i32 32)
  %call = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %main_int_res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body9, label %do.body3, !prof !69

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 735, 0\0A.popsection", ""() #10, !srcloc !70
  unreachable

do.body9:                                         ; preds = %entry
  %call10 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 1, ptr noundef nonnull %per_cpu_int_res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body28, label %do.body19, !prof !69

do.body19:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 736, 0\0A.popsection", ""() #10, !srcloc !71
  unreachable

do.body28:                                        ; preds = %do.body9
  %4 = ptrtoint ptr %main_int_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %main_int_res, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %full_name = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %8 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %full_name, align 4
  %call30 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %add.i, ptr noundef %9, i32 noundef 0) #10
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %do.body41, label %do.body50, !prof !72

do.body41:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 740, 0\0A.popsection", ""() #10, !srcloc !73
  unreachable

do.body50:                                        ; preds = %do.body28
  %10 = ptrtoint ptr %per_cpu_int_res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %per_cpu_int_res, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  %sub.i167 = sub i32 1, %11
  %add.i168 = add i32 %sub.i167, %13
  %14 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %full_name, align 4
  %call54 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %11, i32 noundef %add.i168, ptr noundef %15, i32 noundef 0) #10
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %do.body65, label %do.end73, !prof !72

do.body65:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 743, 0\0A.popsection", ""() #10, !srcloc !74
  unreachable

do.end73:                                         ; preds = %do.body50
  %16 = ptrtoint ptr %main_int_res to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %main_int_res, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %sub.i170 = sub i32 1, %17
  %add.i171 = add i32 %sub.i170, %19
  %call76 = call ptr @ioremap(i32 noundef %17, i32 noundef %add.i171) #10
  store ptr %call76, ptr @main_int_base, align 4
  %tobool78.not = icmp eq ptr %call76, null
  br i1 %tobool78.not, label %do.body88, label %do.end96, !prof !72

do.body88:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 747, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end96:                                         ; preds = %do.end73
  %20 = ptrtoint ptr %per_cpu_int_res to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %per_cpu_int_res, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 4
  %sub.i173 = sub i32 1, %21
  %add.i174 = add i32 %sub.i173, %23
  %call99 = call ptr @ioremap(i32 noundef %21, i32 noundef %add.i174) #10
  store ptr %call99, ptr @per_cpu_int_base, align 4
  %tobool101.not = icmp eq ptr %call99, null
  br i1 %tobool101.not, label %do.body111, label %do.end119, !prof !72

do.body111:                                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #10, !srcloc !76
  unreachable

do.end119:                                        ; preds = %do.end96
  %24 = load ptr, ptr @main_int_base, align 4
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #10, !srcloc !77
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !78
  %shr = lshr i32 %26, 2
  %and = and i32 %shr, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp184.not = icmp eq i32 %and, 0
  br i1 %cmp184.not, label %do.end119.for.end_crit_edge, label %do.end119.do.body122_crit_edge

do.end119.do.body122_crit_edge:                   ; preds = %do.end119
  br label %do.body122

do.end119.for.end_crit_edge:                      ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body122:                                       ; preds = %do.body122.do.body122_crit_edge, %do.end119.do.body122_crit_edge
  %i.0185 = phi i32 [ %inc, %do.body122.do.body122_crit_edge ], [ 0, %do.end119.do.body122_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  call void @arm_heavy_mb() #10
  %27 = call i32 @llvm.bswap.i32(i32 %i.0185)
  %28 = load ptr, ptr @main_int_base, align 4
  %add.ptr125 = getelementptr i8, ptr %28, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %27) #10, !srcloc !80
  %inc = add nuw nsw i32 %i.0185, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %do.body122.for.end_crit_edge, label %do.body122.do.body122_crit_edge

do.body122.do.body122_crit_edge:                  ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body122

do.body122.for.end_crit_edge:                     ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %do.body122.for.end_crit_edge, %do.end119.for.end_crit_edge
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %and, i32 noundef %and, i32 noundef 0, ptr noundef nonnull @armada_370_xp_mpic_irq_ops, ptr noundef null) #10
  store ptr %call1.i, ptr @armada_370_xp_mpic_domain, align 4
  %tobool128.not = icmp eq ptr %call1.i, null
  br i1 %tobool128.not, label %do.body138, label %do.end146, !prof !72

do.body138:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 762, 0\0A.popsection", ""() #10, !srcloc !81
  unreachable

do.end146:                                        ; preds = %for.end
  call void @irq_domain_update_bus_token(ptr noundef nonnull %call1.i, i32 noundef 1) #10
  %29 = call i32 @llvm.read_register.i32(metadata !59) #10
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %shl.i = shl nuw i32 1, %34
  %35 = call i32 @llvm.bswap.i32(i32 %shl.i) #10
  %36 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %35) #10, !srcloc !80
  call fastcc void @armada_xp_mpic_smp_cpu_init()
  %37 = ptrtoint ptr %main_int_res to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %main_int_res, align 4
  %add.i175 = add i32 %38, 4
  store i32 %add.i175, ptr @msi_doorbell_addr, align 4
  %call1.i.i = call ptr @__irq_domain_add(ptr noundef null, i32 noundef 16, i32 noundef 16, i32 noundef 0, ptr noundef nonnull @armada_370_xp_msi_domain_ops, ptr noundef null) #10
  store ptr %call1.i.i, ptr @armada_370_xp_msi_inner_domain, align 4
  %tobool.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i, label %do.end146.armada_370_xp_msi_init.exit_crit_edge, label %if.end.i

do.end146.armada_370_xp_msi_init.exit_crit_edge:  ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_370_xp_msi_init.exit

if.end.i:                                         ; preds = %do.end146
  %call2.i = call ptr @pci_msi_create_irq_domain(ptr noundef %spec.select.i.i, ptr noundef nonnull @armada_370_xp_msi_domain_info, ptr noundef nonnull %call1.i.i) #10
  store ptr %call2.i, ptr @armada_370_xp_msi_domain, align 4
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = load ptr, ptr @armada_370_xp_msi_inner_domain, align 4
  call void @irq_domain_remove(ptr noundef %39) #10
  br label %armada_370_xp_msi_init.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr.i179 = getelementptr i8, ptr %40, i32 12
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #10, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !83
  %42 = or i32 %41, 65535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !84
  call void @arm_heavy_mb() #10
  %43 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr8.i = getelementptr i8, ptr %43, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %42) #10, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  call void @arm_heavy_mb() #10
  %44 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr12.i = getelementptr i8, ptr %44, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777216) #10, !srcloc !80
  br label %armada_370_xp_msi_init.exit

armada_370_xp_msi_init.exit:                      ; preds = %if.end5.i, %if.then4.i, %do.end146.armada_370_xp_msi_init.exit_crit_edge
  %call149 = call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #10
  store i32 %call149, ptr @parent_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call149)
  %cmp150 = icmp slt i32 %call149, 1
  br i1 %cmp150, label %if.then151, label %if.else

if.then151:                                       ; preds = %armada_370_xp_msi_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %45 = load ptr, ptr @armada_370_xp_mpic_domain, align 4
  call void @irq_set_default_host(ptr noundef %45) #10
  %call152 = call i32 @set_handle_irq(ptr noundef nonnull @armada_370_xp_handle_irq) #13
  call fastcc void @armada_xp_ipi_init(ptr noundef %node) #14
  %call.i = call i32 @__cpuhp_setup_state(i32 noundef 100, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef nonnull @armada_xp_mpic_starting_cpu, ptr noundef null, i1 noundef zeroext false) #10
  br label %if.end155

if.else:                                          ; preds = %armada_370_xp_msi_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i180 = call i32 @__cpuhp_setup_state(i32 noundef 100, ptr noundef nonnull @.str.1, i1 noundef zeroext false, ptr noundef nonnull @mpic_cascaded_starting_cpu, ptr noundef null, i1 noundef zeroext false) #10
  %46 = load i32, ptr @parent_irq, align 4
  call void @__irq_set_handler(i32 noundef %46, ptr noundef nonnull @armada_370_xp_mpic_handle_cascade_irq, i32 noundef 1, ptr noundef null) #10
  br label %if.end155

if.end155:                                        ; preds = %if.else, %if.then151
  call void @register_syscore_ops(ptr noundef nonnull @armada_370_xp_mpic_syscore_ops) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %per_cpu_int_res) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %main_int_res) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada_xp_mpic_smp_cpu_init() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @main_int_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #10, !srcloc !77
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  %shr = lshr i32 %2, 2
  %and = and i32 %shr, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp17.not = icmp eq i32 %and, 0
  br i1 %cmp17.not, label %entry.do.body3_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %i.018 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.018)
  %4 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #10, !srcloc !80
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %do.body.do.body3_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body.do.body3_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

do.body3:                                         ; preds = %do.body.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  tail call void @arm_heavy_mb() #10
  %5 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #10, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @arm_heavy_mb() #10
  %6 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #10, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  tail call void @arm_heavy_mb() #10
  %7 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr14 = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #10, !srcloc !80
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_default_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_370_xp_handle_irq(ptr nocapture noundef readnone %regs) #4 align 64 {
entry:
  %ipimask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr28 = getelementptr i8, ptr %0, i32 68
  %1 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #10, !srcloc !77
  %2 = and i32 %1, -16580608
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16580608, i32 %2)
  %cmp29 = icmp eq i32 %2, -16580608
  br i1 %cmp29, label %entry.do.end_crit_edge, label %if.end.preheader

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.preheader:                                 ; preds = %entry
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  br label %if.end

if.end:                                           ; preds = %do.cond.if.end_crit_edge, %if.end.preheader
  %4 = phi i32 [ %24, %do.cond.if.end_crit_edge ], [ %3, %if.end.preheader ]
  %5 = phi i32 [ %23, %do.cond.if.end_crit_edge ], [ %2, %if.end.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1 = icmp ugt i32 %4, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = load ptr, ptr @armada_370_xp_mpic_domain, align 4
  %call3 = call i32 @generic_handle_domain_irq(ptr noundef %6, i32 noundef %4) #10
  br label %do.cond

if.end4:                                          ; preds = %if.end
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end4.do.cond_crit_edge [
    i32 16777216, label %if.then6
    i32 0, label %if.then9
  ]

if.end4.do.cond_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.then6:                                         ; preds = %if.end4
  %8 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 8
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !77
  %10 = and i32 %9, 65535
  %11 = call i32 @llvm.bswap.i32(i32 %10) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !91
  call void @arm_heavy_mb() #10
  %neg.i = xor i32 %11, -1
  %12 = call i32 @llvm.bswap.i32(i32 %neg.i) #10
  %13 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr1.i = getelementptr i8, ptr %13, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %12) #10, !srcloc !80
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then6
  %msinr.01.i = phi i32 [ 16, %if.then6 ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %msinr.01.i
  %and2.i = and i32 %shl.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add nsw i32 %msinr.01.i, -16
  %14 = load ptr, ptr @armada_370_xp_msi_inner_domain, align 4
  %call3.i = call i32 @generic_handle_domain_irq(ptr noundef %14, i32 noundef %sub.i) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %msinr.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %cleanup.i.do.cond_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup.i.do.cond_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.then9:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ipimask) #10
  %15 = ptrtoint ptr %ipimask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %ipimask, align 4, !annotation !92
  %16 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr11 = getelementptr i8, ptr %16, i32 8
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !77
  %18 = lshr i32 %17, 24
  %19 = ptrtoint ptr %ipimask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ipimask, align 4
  %call15 = call i32 @_find_next_bit_be(ptr noundef nonnull %ipimask, i32 noundef 8, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call15)
  %cmp1626 = icmp slt i32 %call15, 8
  br i1 %cmp1626, label %if.then9.for.body_crit_edge, label %if.then9.for.end_crit_edge

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then9.for.body_crit_edge:                      ; preds = %if.then9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then9.for.body_crit_edge
  %ipi.027 = phi i32 [ %call18, %for.body.for.body_crit_edge ], [ %call15, %if.then9.for.body_crit_edge ]
  %20 = load ptr, ptr @ipi_domain, align 4
  %call17 = call i32 @generic_handle_domain_irq(ptr noundef %20, i32 noundef %ipi.027) #10
  %add = add nsw i32 %ipi.027, 1
  %call18 = call i32 @_find_next_bit_be(ptr noundef nonnull %ipimask, i32 noundef 8, i32 noundef %add) #10
  %cmp16 = icmp slt i32 %call18, 8
  br i1 %cmp16, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then9.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ipimask) #10
  br label %do.cond

do.cond:                                          ; preds = %for.end, %cleanup.i.do.cond_crit_edge, %if.end4.do.cond_crit_edge, %if.then2
  %21 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 68
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !77
  %23 = and i32 %22, -16580608
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %cmp = icmp eq i32 %23, -16580608
  br i1 %cmp, label %do.cond.do.end_crit_edge, label %do.cond.if.end_crit_edge

do.cond.if.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada_xp_ipi_init(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %node, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %fwnode.i
  %call.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i, i32 noundef 8, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @ipi_domain_ops, ptr noundef null) #10
  store ptr %call.i, ptr @ipi_domain, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !72

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 425, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %entry
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %call.i, i32 noundef 6) #10
  %0 = load ptr, ptr @ipi_domain, align 4
  %call25 = tail call i32 @__irq_domain_alloc_irqs(ptr noundef %0, i32 noundef -1, i32 noundef 8, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  br i1 %tobool27.not, label %do.end45, label %if.end61, !prof !72

do.end45:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 431, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end61:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @set_smp_ipi_range(i32 noundef %call25, i32 noundef 8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end45, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_xp_mpic_starting_cpu(i32 noundef %cpu) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #10
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @arm_heavy_mb() #10
  %shl.i = shl nuw i32 1, %5
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #10
  %7 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #10, !srcloc !80
  tail call fastcc void @armada_xp_mpic_smp_cpu_init()
  tail call fastcc void @armada_xp_mpic_reenable_percpu()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpic_cascaded_starting_cpu(i32 noundef %cpu) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #10
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @arm_heavy_mb() #10
  %shl.i = shl nuw i32 1, %5
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #10
  %7 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #10, !srcloc !80
  tail call fastcc void @armada_xp_mpic_reenable_percpu()
  %8 = load i32, ptr @parent_irq, align 4
  tail call void @enable_percpu_irq(i32 noundef %8, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_370_xp_mpic_handle_cascade_irq(ptr noundef %desc) #4 align 64 {
entry:
  %irqmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqmap) #10
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %5(ptr noundef %irq_data.i) #10
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data4.i) #10
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef %irq_data4.i) #10
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %10 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !77
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %irqmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %irqmap, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !59) #10
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %irqmap, i32 noundef 32, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call3)
  %cmp27 = icmp ult i32 %call3, 32
  br i1 %cmp27, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %shl = shl i32 257, %19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %irqn.028 = phi i32 [ %call3, %for.body.lr.ph ], [ %call13, %for.inc.for.body_crit_edge ]
  %20 = load ptr, ptr @main_int_base, align 4
  %mul = shl nuw nsw i32 %irqn.028, 2
  %add = add nuw nsw i32 %mul, 256
  %add.ptr5 = getelementptr i8, ptr %20, i32 %add
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !77
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %and = and i32 %22, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %irqn.028)
  %cmp8 = icmp eq i32 %irqn.028, 1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %23 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 8
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !77
  %25 = and i32 %24, 65535
  %26 = call i32 @llvm.bswap.i32(i32 %25) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !91
  call void @arm_heavy_mb() #10
  %neg.i = xor i32 %26, -1
  %27 = call i32 @llvm.bswap.i32(i32 %neg.i) #10
  %28 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr1.i = getelementptr i8, ptr %28, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %27) #10, !srcloc !80
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then9
  %msinr.01.i = phi i32 [ 16, %if.then9 ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %msinr.01.i
  %and2.i = and i32 %shl.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i21 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i21, label %for.body.i.cleanup.i_crit_edge, label %if.end.i22

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i22:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add nsw i32 %msinr.01.i, -16
  %29 = load ptr, ptr @armada_370_xp_msi_inner_domain, align 4
  %call3.i = call i32 @generic_handle_domain_irq(ptr noundef %29, i32 noundef %sub.i) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i22, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %msinr.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %cleanup.i.for.inc_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup.i.for.inc_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %30 = load ptr, ptr @armada_370_xp_mpic_domain, align 4
  %call11 = call i32 @generic_handle_domain_irq(ptr noundef %30, i32 noundef %irqn.028) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %cleanup.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add12 = add i32 %irqn.028, 1
  %call13 = call i32 @_find_next_bit_be(ptr noundef nonnull %irqmap, i32 noundef 32, i32 noundef %add12) #10
  %cmp = icmp ult i32 %call13, 32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %31 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i24 = icmp eq ptr %32, null
  br i1 %tobool.not.i24, label %if.else.i25, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_exit.exit

if.else.i25:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i25, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %34, %if.else.i25 ], [ %32, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqmap) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_xp_mpic_irq_map(ptr nocapture noundef readnone %h, i32 noundef %virq, i32 noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_get_irq_data(i32 noundef %virq) #10
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %1)
  %cmp.i.i = icmp ult i32 %1, 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #10
  br i1 %cmp.i.i, label %do.body2.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load ptr, ptr @main_int_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #10, !srcloc !80
  br label %armada_370_xp_irq_mask.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr5.i = getelementptr i8, ptr %4, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #10, !srcloc !80
  br label %armada_370_xp_irq_mask.exit

armada_370_xp_irq_mask.exit:                      ; preds = %do.body2.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %hw)
  %cmp.i = icmp ult i32 %hw, 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %hw)
  br i1 %cmp.i, label %if.then6, label %if.else8

if.then6:                                         ; preds = %armada_370_xp_irq_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %6 = load ptr, ptr @main_int_base, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #10, !srcloc !80
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 256) #10
  %call7 = tail call i32 @irq_set_percpu_devid(i32 noundef %virq) #10
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @armada_370_xp_irq_chip, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null) #10
  br label %if.end11

if.else8:                                         ; preds = %armada_370_xp_irq_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  %7 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #10, !srcloc !80
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 256) #10
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @armada_370_xp_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #10
  %call9 = tail call ptr @irq_to_desc(i32 noundef %virq) #10
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %call9, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %or.i = or i32 %11, 16777216
  store i32 %or.i, ptr %9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then6
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 1024, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_370_xp_irq_mask(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %1)
  %cmp.i = icmp ult i32 %1, 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  br i1 %cmp.i, label %do.body2, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load ptr, ptr @main_int_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !80
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %2) #10, !srcloc !80
  br label %if.end

if.end:                                           ; preds = %do.body2, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_percpu_devid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_percpu_devid_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_370_xp_irq_unmask(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %1)
  %cmp.i = icmp ult i32 %1, 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  br i1 %cmp.i, label %do.body2, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load ptr, ptr @main_int_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !80
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %2) #10, !srcloc !80
  br label %if.end

if.end:                                           ; preds = %do.body2, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_xp_set_affinity(ptr nocapture noundef readonly %d, ptr noundef %mask_val, i1 noundef zeroext %force) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i.i = tail call i32 @_find_first_and_bit(ptr noundef %mask_val, ptr noundef nonnull @__cpu_online_mask, i32 noundef %2) #10
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call6.i.i
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %4
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_controller_lock) #10
  %5 = load ptr, ptr @main_int_base, align 4
  %mul = shl i32 %1, 2
  %add = add i32 %mul, 256
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  %7 = and i32 %6, -251658241
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or = or i32 %8, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = load ptr, ptr @main_int_base, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #10, !srcloc !80
  tail call void @_raw_spin_unlock(ptr noundef nonnull @irq_controller_lock) #10
  %rem.i = and i32 %call6.i.i, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %call6.i.i, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %11 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common.i, align 4
  %effective_affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %effective_affinity.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %effective_affinity.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %15, 31
  %16 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %16, 536870908
  %17 = call ptr @memcpy(ptr %14, ptr %add.ptr.i, i32 %mul.i.i.i)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_and_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_xp_msi_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @msi_used_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i41 = add i32 %nr_irqs, -1
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub.i41, i1 false) #10, !range !95
  %add.i = sub nuw nsw i32 32, %0
  %cond19 = select i1 %cmp.i, i32 %add.i, i32 0
  %call20 = tail call i32 @bitmap_find_free_region(ptr noundef nonnull @msi_used, i32 noundef 16, i32 noundef %cond19) #10
  tail call void @mutex_unlock(ptr noundef nonnull @msi_used_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp2342.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp2342.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add25 = add i32 %i.043, %virq
  %add26 = add i32 %i.043, %call20
  %1 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %add25, i32 noundef %add26, ptr noundef nonnull @armada_370_xp_msi_bottom_irq_chip, ptr noundef %2, ptr noundef nonnull @handle_simple_irq, ptr noundef null, ptr noundef null) #10
  %inc = add nuw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_370_xp_msi_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @msi_used_lock, i32 noundef 0) #10
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i28 = add i32 %nr_irqs, -1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i28, i1 false) #10, !range !95
  %add.i = sub nuw nsw i32 32, %2
  %cond20 = select i1 %cmp.i, i32 %add.i, i32 0
  tail call void @bitmap_release_region(ptr noundef nonnull @msi_used, i32 noundef %1, i32 noundef %cond20) #10
  tail call void @mutex_unlock(ptr noundef nonnull @msi_used_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @armada_370_xp_msi_set_affinity(ptr nocapture noundef readnone %irq_data, ptr nocapture noundef readnone %mask, i1 noundef zeroext %force) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @armada_370_xp_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %msg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @msi_doorbell_addr, align 4
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %msg, align 4
  %2 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %add = add i32 %5, 16
  %or = or i32 %add, 3840
  %6 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_smp_ipi_range(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_xp_ipi_alloc(ptr noundef %d, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp8.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add i32 %i.09, %virq
  %call = tail call i32 @irq_set_percpu_devid(i32 noundef %add) #10
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %d, i32 noundef %add, i32 noundef %i.09, ptr noundef nonnull @ipi_irqchip, ptr noundef %1, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null, ptr noundef null) #10
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @armada_370_xp_ipi_free(ptr nocapture noundef %d, i32 noundef %virq, i32 noundef %nr_irqs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_370_xp_ipi_ack(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @arm_heavy_mb() #10
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %1
  %neg = xor i32 %shl, -1
  %2 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %3 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !80
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_370_xp_ipi_mask(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 12
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !77
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %4
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %and)
  %6 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %5) #10, !srcloc !80
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_370_xp_ipi_unmask(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 12
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !77
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !99
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %4
  %or = or i32 %shl, %2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %5) #10, !srcloc !80
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_370_xp_ipi_send_mask(ptr nocapture noundef readonly %d, ptr noundef readonly %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %mask) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %0)
  %cmp7 = icmp ult i32 %call6, %0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call9 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call6, %entry.for.body_crit_edge ]
  %map.08 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call9
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %2
  %or = or i32 %shl, %map.08
  %call = tail call i32 @cpumask_next(i32 noundef %call9, ptr noundef %mask) #15
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = shl i32 %or, 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %map.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !102
  tail call void @arm_heavy_mb() #10
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq, align 4
  %or2 = or i32 %4, %map.0.lcssa
  %5 = tail call i32 @llvm.bswap.i32(i32 %or2)
  %6 = load ptr, ptr @main_int_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #10, !srcloc !80
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada_xp_mpic_reenable_percpu() unnamed_addr #4 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %irq.013 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %0 = load ptr, ptr @armada_370_xp_mpic_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #10
  %1 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !92
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef %0, i32 noundef %irq.013, ptr noundef nonnull %irq.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %irq_linear_revmap.exit.thread, label %irq_linear_revmap.exit

irq_linear_revmap.exit.thread:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #10
  br label %cleanup

irq_linear_revmap.exit:                           ; preds = %for.body
  %2 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %irq_linear_revmap.exit.cleanup_crit_edge, label %if.end

irq_linear_revmap.exit.cleanup_crit_edge:         ; preds = %irq_linear_revmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %irq_linear_revmap.exit
  %call2 = call ptr @irq_get_irq_data(i32 noundef %3) #10
  %call3 = call zeroext i1 @irq_percpu_is_enabled(i32 noundef %3) #10
  br i1 %call3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %call2, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %5)
  %cmp.i.i = icmp ult i32 %5, 29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  %6 = call i32 @llvm.bswap.i32(i32 %5) #10
  br i1 %cmp.i.i, label %do.body2.i, label %do.body.i

do.body.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %7 = load ptr, ptr @main_int_base, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #10, !srcloc !80
  br label %cleanup

do.body2.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %8 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %6) #10, !srcloc !80
  br label %cleanup

cleanup:                                          ; preds = %do.body2.i, %do.body.i, %if.end.cleanup_crit_edge, %irq_linear_revmap.exit.cleanup_crit_edge, %irq_linear_revmap.exit.thread
  %inc = add nuw nsw i32 %irq.013, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ipi_resume()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_percpu_is_enabled(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipi_resume() unnamed_addr #4 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %0 = load ptr, ptr @ipi_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #10
  %1 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %irq.i, align 4, !annotation !92
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %0, i32 noundef %i.012, ptr noundef nonnull %irq.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #10
  br label %cleanup

irq_find_mapping.exit:                            ; preds = %for.body
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp slt i32 %3, 1
  br i1 %cmp1, label %irq_find_mapping.exit.cleanup_crit_edge, label %if.end

irq_find_mapping.exit.cleanup_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %irq_find_mapping.exit
  %call2 = call zeroext i1 @irq_percpu_is_enabled(i32 noundef %3) #10
  br i1 %call2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = load ptr, ptr @ipi_domain, align 4
  %call4 = call ptr @irq_domain_get_irq_data(ptr noundef %4, i32 noundef %3) #10
  %5 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !77
  %7 = call i32 @llvm.bswap.i32(i32 %6) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !99
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %call4, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq.i, align 4
  %shl.i = shl nuw i32 1, %9
  %or.i = or i32 %shl.i, %7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  call void @arm_heavy_mb() #10
  %10 = call i32 @llvm.bswap.i32(i32 %or.i) #10
  %11 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %11, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %10) #10, !srcloc !80
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %irq_find_mapping.exit.cleanup_crit_edge, %irq_find_mapping.exit.thread
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_xp_mpic_suspend() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 12
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !77
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !103
  store i32 %2, ptr @doorbell_mask_reg, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_370_xp_mpic_resume() #4 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @main_int_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #10, !srcloc !77
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %shr = lshr i32 %2, 2
  %and = and i32 %shr, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp57.not = icmp eq i32 %and, 0
  br i1 %cmp57.not, label %entry.do.body20_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %irq.058 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %3 = load ptr, ptr @armada_370_xp_mpic_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #10
  %4 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !92
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef %3, i32 noundef %irq.058, ptr noundef nonnull %irq.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %irq_linear_revmap.exit.thread, label %irq_linear_revmap.exit

irq_linear_revmap.exit.thread:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #10
  br label %cleanup

irq_linear_revmap.exit:                           ; preds = %for.body
  %5 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %irq_linear_revmap.exit.cleanup_crit_edge, label %if.end

irq_linear_revmap.exit.cleanup_crit_edge:         ; preds = %irq_linear_revmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %irq_linear_revmap.exit
  %call4 = call ptr @irq_get_irq_data(i32 noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %irq.058)
  %cmp.i = icmp ult i32 %irq.058, 29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  %7 = call i32 @llvm.bswap.i32(i32 %irq.058)
  br i1 %cmp.i, label %do.body11, label %do.body

do.body:                                          ; preds = %if.end
  %8 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %7) #10, !srcloc !80
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call4, i32 0, i32 3
  %9 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then9, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %do.body
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %call4, i32 0, i32 2
  %13 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %14)
  %cmp.i.i = icmp ult i32 %14, 29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  %15 = call i32 @llvm.bswap.i32(i32 %14) #10
  br i1 %cmp.i.i, label %do.body2.i, label %do.body.i

do.body.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %16 = load ptr, ptr @main_int_base, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #10, !srcloc !80
  br label %cleanup

do.body2.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %17 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr5.i = getelementptr i8, ptr %17, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %15) #10, !srcloc !80
  br label %cleanup

do.body11:                                        ; preds = %if.end
  %18 = load ptr, ptr @main_int_base, align 4
  %add.ptr14 = getelementptr i8, ptr %18, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %7) #10, !srcloc !80
  %call15 = call zeroext i1 @irq_percpu_is_enabled(i32 noundef %6) #10
  br i1 %call15, label %if.then16, label %do.body11.cleanup_crit_edge

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %do.body11
  %hwirq.i.i48 = getelementptr inbounds %struct.irq_data, ptr %call4, i32 0, i32 2
  %19 = ptrtoint ptr %hwirq.i.i48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hwirq.i.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %20)
  %cmp.i.i49 = icmp ult i32 %20, 29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  %21 = call i32 @llvm.bswap.i32(i32 %20) #10
  br i1 %cmp.i.i49, label %do.body2.i53, label %do.body.i51

do.body.i51:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %22 = load ptr, ptr @main_int_base, align 4
  %add.ptr.i50 = getelementptr i8, ptr %22, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %21) #10, !srcloc !80
  br label %cleanup

do.body2.i53:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %23 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr5.i52 = getelementptr i8, ptr %23, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i52, i32 %21) #10, !srcloc !80
  br label %cleanup

cleanup:                                          ; preds = %do.body2.i53, %do.body.i51, %do.body11.cleanup_crit_edge, %do.body2.i, %do.body.i, %do.body.cleanup_crit_edge, %irq_linear_revmap.exit.cleanup_crit_edge, %irq_linear_revmap.exit.thread
  %inc = add nuw nsw i32 %irq.058, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %cleanup.do.body20_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.do.body20_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

do.body20:                                        ; preds = %cleanup.do.body20_crit_edge, %entry.do.body20_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  call void @arm_heavy_mb() #10
  %24 = load i32, ptr @doorbell_mask_reg, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr23 = getelementptr i8, ptr %26, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %25) #10, !srcloc !80
  %27 = load i32, ptr @doorbell_mask_reg, align 4
  %and24 = and i32 %27, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not = icmp eq i32 %and24, 0
  br i1 %tobool.not, label %do.body20.if.end30_crit_edge, label %do.body26

do.body20.if.end30_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.body26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !106
  call void @arm_heavy_mb() #10
  %28 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr29 = getelementptr i8, ptr %28, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #10, !srcloc !80
  %.pr = load i32, ptr @doorbell_mask_reg, align 4
  br label %if.end30

if.end30:                                         ; preds = %do.body26, %do.body20.if.end30_crit_edge
  %29 = phi i32 [ %.pr, %do.body26 ], [ %27, %do.body20.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %29)
  %tobool32.not = icmp ult i32 %29, 65536
  br i1 %tobool32.not, label %if.end30.if.end38_crit_edge, label %do.body34

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.body34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  call void @arm_heavy_mb() #10
  %30 = load ptr, ptr @per_cpu_int_base, align 4
  %add.ptr37 = getelementptr i8, ptr %30, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 16777216) #10, !srcloc !80
  br label %if.end38

if.end38:                                         ; preds = %do.body34, %if.end30.if.end38_crit_edge
  call fastcc void @ipi_resume()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__of_table_armada_370_xp_mpic, !1, !"__of_table_armada_370_xp_mpic", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 796, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 778, i32 8}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 784, i32 8}
!6 = !{ptr @main_int_base, !7, !"main_int_base", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 147, i32 22}
!8 = !{ptr @per_cpu_int_base, !9, !"per_cpu_int_base", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 146, i32 22}
!10 = !{ptr @armada_370_xp_mpic_irq_ops, !11, !"armada_370_xp_mpic_irq_ops", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 562, i32 36}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 527, i32 11}
!14 = !{ptr @armada_370_xp_irq_chip, !15, !"armada_370_xp_irq_chip", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 526, i32 24}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 437, i32 8}
!18 = !{ptr @irq_controller_lock, !17, !"irq_controller_lock", i1 false, i1 false}
!19 = !{ptr @armada_370_xp_mpic_domain, !20, !"armada_370_xp_mpic_domain", i1 false, i1 false}
!20 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 148, i32 27}
!21 = !{ptr @msi_doorbell_addr, !22, !"msi_doorbell_addr", i1 false, i1 false}
!22 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 156, i32 20}
!23 = !{ptr @armada_370_xp_msi_domain_ops, !24, !"armada_370_xp_msi_domain_ops", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 262, i32 36}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 155, i32 8}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @msi_used_lock, !26, !"msi_used_lock", i1 false, i1 false}
!29 = !{ptr @msi_used, !30, !"msi_used", i1 false, i1 false}
!30 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 154, i32 8}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 224, i32 12}
!33 = !{ptr @armada_370_xp_msi_bottom_irq_chip, !34, !"armada_370_xp_msi_bottom_irq_chip", i1 false, i1 false}
!34 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 223, i32 24}
!35 = !{ptr @armada_370_xp_msi_inner_domain, !36, !"armada_370_xp_msi_inner_domain", i1 false, i1 false}
!36 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 153, i32 27}
!37 = !{ptr @armada_370_xp_msi_domain_info, !38, !"armada_370_xp_msi_domain_info", i1 false, i1 false}
!38 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 204, i32 31}
!39 = !{ptr @armada_370_xp_msi_irq_chip, !40, !"armada_370_xp_msi_irq_chip", i1 false, i1 false}
!40 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 198, i32 24}
!41 = !{ptr @armada_370_xp_msi_domain, !42, !"armada_370_xp_msi_domain", i1 false, i1 false}
!42 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 152, i32 27}
!43 = !{ptr @parent_irq, !44, !"parent_irq", i1 false, i1 false}
!44 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 150, i32 12}
!45 = !{ptr @ipi_domain, !46, !"ipi_domain", i1 false, i1 false}
!46 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 319, i32 27}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 425, i32 6}
!49 = !{ptr @ipi_domain_ops, !50, !"ipi_domain_ops", i1 false, i1 false}
!50 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 395, i32 36}
!51 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 364, i32 11}
!53 = !{ptr @ipi_irqchip, !54, !"ipi_irqchip", i1 false, i1 false}
!54 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 363, i32 24}
!55 = !{ptr @armada_370_xp_mpic_syscore_ops, !56, !"armada_370_xp_mpic_syscore_ops", i1 false, i1 false}
!56 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 723, i32 27}
!57 = !{ptr @doorbell_mask_reg, !58, !"doorbell_mask_reg", i1 false, i1 false}
!58 = !{!"../drivers/irqchip/irq-armada-370-xp.c", i32 149, i32 12}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2153717679, i64 2153718179, i64 2153717716, i64 2153717772, i64 2153717806, i64 2153717830, i64 2153717871, i64 2153717892, i64 2153717920, i64 2153717954}
!71 = !{i64 2153719381, i64 2153719881, i64 2153719418, i64 2153719474, i64 2153719508, i64 2153719532, i64 2153719573, i64 2153719594, i64 2153719622, i64 2153719656}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2153721342, i64 2153721842, i64 2153721379, i64 2153721435, i64 2153721469, i64 2153721493, i64 2153721534, i64 2153721555, i64 2153721583, i64 2153721617}
!74 = !{i64 2153723321, i64 2153723821, i64 2153723358, i64 2153723414, i64 2153723448, i64 2153723472, i64 2153723513, i64 2153723534, i64 2153723562, i64 2153723596}
!75 = !{i64 2153724961, i64 2153725461, i64 2153724998, i64 2153725054, i64 2153725088, i64 2153725112, i64 2153725153, i64 2153725174, i64 2153725202, i64 2153725236}
!76 = !{i64 2153726607, i64 2153727107, i64 2153726644, i64 2153726700, i64 2153726734, i64 2153726758, i64 2153726799, i64 2153726820, i64 2153726848, i64 2153726882}
!77 = !{i64 4100674}
!78 = !{i64 2153728380}
!79 = !{i64 2153728604}
!80 = !{i64 4100256}
!81 = !{i64 2153729186, i64 2153729686, i64 2153729223, i64 2153729279, i64 2153729313, i64 2153729337, i64 2153729378, i64 2153729399, i64 2153729427, i64 2153729461}
!82 = !{i64 2153701005}
!83 = !{i64 2153699796}
!84 = !{i64 2153700036}
!85 = !{i64 2153700446}
!86 = !{i64 2153708222}
!87 = !{i64 2153708449}
!88 = !{i64 2153708853}
!89 = !{i64 2153709257}
!90 = !{i64 2153709661}
!91 = !{i64 2153711250}
!92 = !{!"auto-init"}
!93 = !{i64 2153707192}
!94 = !{i64 2153707449}
!95 = !{i32 0, i32 33}
!96 = !{i64 2153704297}
!97 = !{i64 2153701743}
!98 = !{i64 2153702054}
!99 = !{i64 2153702762}
!100 = !{i64 2153703073}
!101 = !{i64 2153703475}
!102 = !{i64 2153703719}
!103 = !{i64 2153714428}
!104 = !{i64 2153714941}
!105 = !{i64 2153716002}
!106 = !{i64 2153716459}
!107 = !{i64 2153716874}
