; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-sun6i-r.c_pt.bc'
source_filename = "../drivers/irqchip/irq-sun6i-r.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sun6i_r_intc_variant = type { i32, i32, [4 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_sun6i_a31_r_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-r-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_r_intc_init }, section "__irqchip_of_table", align 4
@__of_table_sun50i_h6_r_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-r-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_r_intc_init }, section "__irqchip_of_table", align 4
@sun6i_a31_r_intc_variant = internal constant %struct.sun6i_r_intc_variant { i32 19, i32 13, [4 x i32] [i32 -1, i32 -524288, i32 -1, i32 15] }, section ".init.rodata", align 4
@nmi_hwirq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@wake_irq_enabled = internal global { [2 x i32], [24 x i8] } zeroinitializer, align 32
@wake_mux_valid = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@sun6i_r_intc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%pOF: Failed to obtain parent domain\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun6i_r_intc_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/irqchip/irq-sun6i-r.c\00", [34 x i8] zeroinitializer }, align 32
@sun6i_r_intc_init._entry_ptr = internal global ptr @sun6i_r_intc_init._entry, section ".printk_index", align 4
@base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sun6i_r_intc_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%pOF: Failed to map MMIO region\0A\00", [61 x i8] zeroinitializer }, align 32
@sun6i_r_intc_init._entry_ptr.5 = internal global ptr @sun6i_r_intc_init._entry.3, section ".printk_index", align 4
@sun6i_r_intc_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_r_intc_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @sun6i_r_intc_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@sun6i_r_intc_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%pOF: Failed to allocate domain\0A\00", [61 x i8] zeroinitializer }, align 32
@sun6i_r_intc_init._entry_ptr.8 = internal global ptr @sun6i_r_intc_init._entry.6, section ".printk_index", align 4
@sun6i_r_intc_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @sun6i_r_intc_suspend, ptr @sun6i_r_intc_resume, ptr @sun6i_r_intc_shutdown }, [44 x i8] zeroinitializer }, align 32
@sun6i_r_intc_nmi_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_r_intc_nmi_ack, ptr @irq_chip_mask_parent, ptr null, ptr @sun6i_r_intc_nmi_unmask, ptr @sun6i_r_intc_nmi_eoi, ptr @irq_chip_set_affinity_parent, ptr null, ptr @sun6i_r_intc_nmi_set_type, ptr @sun6i_r_intc_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_r_intc_nmi_set_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1 }, [56 x i8] zeroinitializer }, align 32
@sun6i_r_intc_wakeup_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr null, ptr @irq_chip_set_type_parent, ptr @sun6i_r_intc_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1 }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sun6i-r-intc\00", [19 x i8] zeroinitializer }, align 32
@wake_mux_enabled = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@sun50i_h6_r_intc_variant = internal constant %struct.sun6i_r_intc_variant { i32 21, i32 16, [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1] }, section ".init.rodata", align 4
@switch.table.sun6i_r_intc_nmi_set_type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 50331648, i32 16777216, i32 50331648, i32 33554432, i32 50331648, i32 50331648, i32 50331648, i32 0], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"nmi_hwirq\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 79, i32 24 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"wake_irq_enabled\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 80, i32 8 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"wake_mux_valid\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 82, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 329, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 78, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 335, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"sun6i_r_intc_domain_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 263, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 342, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [25 x i8] c"sun6i_r_intc_syscore_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 300, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"sun6i_r_intc_nmi_chip\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 174, i32 24 }
@___asan_gen_.55 = private unnamed_addr constant [25 x i8] c"sun6i_r_intc_wakeup_chip\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 187, i32 24 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 175, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"wake_mux_enabled\00", align 1
@___asan_gen_.62 = private constant [33 x i8] c"../drivers/irqchip/irq-sun6i-r.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 81, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [39 x i8] c"switch.table.sun6i_r_intc_nmi_set_type\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__of_table_sun50i_h6_r_intc, ptr @__of_table_sun6i_a31_r_intc, ptr @sun6i_r_intc_init._entry, ptr @sun6i_r_intc_init._entry.3, ptr @sun6i_r_intc_init._entry.6, ptr @sun6i_r_intc_init._entry_ptr, ptr @sun6i_r_intc_init._entry_ptr.5, ptr @sun6i_r_intc_init._entry_ptr.8, ptr @nmi_hwirq, ptr @wake_irq_enabled, ptr @wake_mux_valid, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @base, ptr @.str.4, ptr @sun6i_r_intc_domain_ops, ptr @.str.7, ptr @sun6i_r_intc_syscore_ops, ptr @sun6i_r_intc_nmi_chip, ptr @sun6i_r_intc_wakeup_chip, ptr @.str.9, ptr @wake_mux_enabled, ptr @switch.table.sun6i_r_intc_nmi_set_type], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmi_hwirq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wake_irq_enabled to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wake_mux_valid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_r_intc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_r_intc_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_r_intc_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_r_intc_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_r_intc_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_r_intc_nmi_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_r_intc_wakeup_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wake_mux_enabled to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun6i_r_intc_nmi_set_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_a31_r_intc_init(ptr noundef %node, ptr noundef %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sun6i_r_intc_init(ptr noundef %node, ptr noundef %parent, ptr noundef nonnull @sun6i_a31_r_intc_variant) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_h6_r_intc_init(ptr noundef %node, ptr noundef %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sun6i_r_intc_init(ptr noundef %node, ptr noundef %parent, ptr noundef nonnull @sun50i_h6_r_intc_variant) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun6i_r_intc_init(ptr noundef %node, ptr noundef %parent, ptr nocapture noundef readonly %v) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  %nmi_parent = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %nmi_parent) #7
  %0 = call ptr @memset(ptr %nmi_parent, i32 255, i32 72)
  %call = call i32 @of_irq_parse_one(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %nmi_parent) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %nmi_parent, i32 0, i32 1
  %1 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %nmi_parent, i32 0, i32 2
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr inbounds %struct.of_phandle_args, ptr %nmi_parent, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp5.not = icmp eq i32 %6, 4
  br i1 %cmp5.not, label %if.end7, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false2
  %arrayidx9 = getelementptr inbounds %struct.of_phandle_args, ptr %nmi_parent, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 4
  store i32 %8, ptr @nmi_hwirq, align 4
  %9 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v, align 4
  %nr_mux_irqs = getelementptr inbounds %struct.sun6i_r_intc_variant, ptr %v, i32 0, i32 1
  %11 = ptrtoint ptr %nr_mux_irqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_mux_irqs, align 4
  call void @__bitmap_set(ptr noundef nonnull @wake_irq_enabled, i32 noundef %10, i32 noundef %12) #7
  %mux_valid = getelementptr inbounds %struct.sun6i_r_intc_variant, ptr %v, i32 0, i32 2
  %13 = call ptr @memcpy(ptr @wake_mux_valid, ptr %mux_valid, i32 16)
  %tobool.not.i.i.i = icmp eq ptr %parent, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #7
  %14 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 68)
  %16 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #7
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

irq_find_host.exit:                               ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #7
  %17 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 68)
  %19 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #7
  %tobool11.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool11.not, label %do.end, label %irq_find_host.exit.if.end14_crit_edge

irq_find_host.exit.if.end14_crit_edge:            ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end:                                           ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node) #11
  br label %cleanup

if.end14:                                         ; preds = %irq_find_host.exit.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %d.0.i52 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end14_crit_edge ], [ %call.i.i.i, %if.end7.if.end14_crit_edge ]
  %call15 = call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef null) #7
  store ptr %call15, ptr @base, align 4
  %cmp.i47 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %do.end20, label %if.end24

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %node) #11
  %20 = load ptr, ptr @base, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i52, i32 noundef 0, i32 noundef 0, ptr noundef %spec.select.i.i, ptr noundef nonnull @sun6i_r_intc_domain_ops, ptr noundef null) #7
  %tobool26.not = icmp eq ptr %call1.i, null
  br i1 %tobool26.not, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %node) #11
  %22 = load ptr, ptr @base, align 4
  call void @iounmap(ptr noundef %22) #7
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  call void @register_syscore_ops(ptr noundef nonnull @sun6i_r_intc_syscore_ops) #7
  %23 = load ptr, ptr @base, align 4
  %add.ptr.i48 = getelementptr i8, ptr %23, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 16777216) #7, !srcloc !51
  %24 = load ptr, ptr @base, align 4
  %add.ptr.i49 = getelementptr i8, ptr %24, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 16777216) #7, !srcloc !51
  %25 = load ptr, ptr @base, align 4
  %add.ptr1.i = getelementptr i8, ptr %25, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #7, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end30, %do.end20, %do.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %do.end20 ], [ 0, %if.end33 ], [ -12, %do.end30 ], [ -6, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %nmi_parent) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_r_intc_resume() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !51
  %1 = load ptr, ptr @base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #7, !srcloc !51
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_r_intc_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %arg) #4 align 64 {
entry:
  %gic_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %gic_fwspec) #7
  %param_count.i = getelementptr inbounds %struct.irq_fwspec, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %param_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %param.i = getelementptr inbounds %struct.irq_fwspec, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i = icmp eq i32 %3, 0
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i = getelementptr %struct.irq_fwspec, ptr %arg, i32 0, i32 2, i32 1
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp5.i = icmp slt i32 %1, 3
  br i1 %cmp5.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %param8.i = getelementptr inbounds %struct.irq_fwspec, ptr %arg, i32 0, i32 2
  %4 = ptrtoint ptr %param8.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.not.i = icmp eq i32 %5, 0
  br i1 %cmp10.not.i, label %if.end12.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14.i = getelementptr %struct.irq_fwspec, ptr %arg, i32 0, i32 2, i32 1
  %arrayidx16.i = getelementptr %struct.irq_fwspec, ptr %arg, i32 0, i32 2, i32 2
  br label %if.end

if.end:                                           ; preds = %if.end12.i, %if.then.i
  %hwirq.0.in = phi ptr [ @nmi_hwirq, %if.then.i ], [ %arrayidx14.i, %if.end12.i ]
  %arrayidx16.sink.i = phi ptr [ %arrayidx3.i, %if.then.i ], [ %arrayidx16.i, %if.end12.i ]
  %6 = ptrtoint ptr %hwirq.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %hwirq.0 = load i32, ptr %hwirq.0.in, align 4
  %add = add i32 %hwirq.0, %nr_irqs
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp = icmp ugt i32 %add, 128
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %7 = ptrtoint ptr %arrayidx16.sink.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx16.sink.i, align 4
  %and17.i = and i32 %8, 15
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %fwnode3 = getelementptr inbounds %struct.irq_domain, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %fwnode3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fwnode3, align 4
  %13 = ptrtoint ptr %gic_fwspec to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %gic_fwspec, align 4
  %.compoundliteral.sroa.3.0.gic_fwspec.sroa_idx = getelementptr inbounds i8, ptr %gic_fwspec, i32 4
  %14 = ptrtoint ptr %.compoundliteral.sroa.3.0.gic_fwspec.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %.compoundliteral.sroa.3.0.gic_fwspec.sroa_idx, align 4
  %.compoundliteral.sroa.4.0.gic_fwspec.sroa_idx = getelementptr inbounds i8, ptr %gic_fwspec, i32 8
  %15 = ptrtoint ptr %.compoundliteral.sroa.4.0.gic_fwspec.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %.compoundliteral.sroa.4.0.gic_fwspec.sroa_idx, align 4
  %.compoundliteral.sroa.422.0.gic_fwspec.sroa_idx = getelementptr inbounds i8, ptr %gic_fwspec, i32 12
  %16 = ptrtoint ptr %.compoundliteral.sroa.422.0.gic_fwspec.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %hwirq.0, ptr %.compoundliteral.sroa.422.0.gic_fwspec.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.gic_fwspec.sroa_idx = getelementptr inbounds i8, ptr %gic_fwspec, i32 16
  %17 = ptrtoint ptr %.compoundliteral.sroa.5.0.gic_fwspec.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and17.i, ptr %.compoundliteral.sroa.5.0.gic_fwspec.sroa_idx, align 4
  %.compoundliteral.sroa.6.0.gic_fwspec.sroa_idx = getelementptr inbounds i8, ptr %gic_fwspec, i32 20
  %18 = call ptr @memset(ptr %.compoundliteral.sroa.6.0.gic_fwspec.sroa_idx, i32 0, i32 52)
  %call5 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef nonnull %gic_fwspec) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.cond.preheader, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp944.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp944.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %virq.addr.046 = phi i32 [ %inc16, %for.inc.for.body_crit_edge ], [ %virq, %for.cond.preheader.for.body_crit_edge ]
  %hwirq.245 = phi i32 [ %inc15, %for.inc.for.body_crit_edge ], [ %hwirq.0, %for.cond.preheader.for.body_crit_edge ]
  %19 = load i32, ptr @nmi_hwirq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %hwirq.245, i32 %19)
  %cmp10 = icmp eq i32 %hwirq.245, %19
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq.addr.046, i32 noundef %hwirq.245, ptr noundef nonnull @sun6i_r_intc_nmi_chip, ptr noundef null) #7
  call void @__irq_set_handler(i32 noundef %virq.addr.046, ptr noundef nonnull @handle_fasteoi_ack_irq, i32 noundef 0, ptr noundef null) #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq.addr.046, i32 noundef %hwirq.245, ptr noundef nonnull @sun6i_r_intc_wakeup_chip, ptr noundef null) #7
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then11
  %inc = add nuw i32 %i.048, 1
  %inc15 = add i32 %hwirq.245, 1
  %inc16 = add i32 %virq.addr.046, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %call5, %if.end2.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end7.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %gic_fwspec) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun6i_r_intc_domain_translate(ptr nocapture noundef readnone %domain, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %0 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr @nmi_hwirq, align 4
  %5 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %hwirq, align 4
  %arrayidx3 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  br label %return.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp5 = icmp slt i32 %1, 3
  br i1 %cmp5, label %if.end.return_crit_edge, label %if.end7

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7:                                          ; preds = %if.end
  %param8 = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %6 = ptrtoint ptr %param8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not = icmp eq i32 %7, 0
  br i1 %cmp10.not, label %if.end12, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx14, align 4
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %hwirq, align 4
  %arrayidx16 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 2
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end12, %if.then
  %arrayidx16.sink = phi ptr [ %arrayidx16, %if.end12 ], [ %arrayidx3, %if.then ]
  %11 = ptrtoint ptr %arrayidx16.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx16.sink, align 4
  %and17 = and i32 %12, 15
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and17, ptr %type, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end7.return_crit_edge, %if.end.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.return_crit_edge ], [ -22, %if.end7.return_crit_edge ], [ -22, %land.lhs.true.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_ack_irq(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_r_intc_nmi_ack(ptr nocapture noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load ptr, ptr @base, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !51
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %5 = ptrtoint ptr %chip_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 1 to ptr), ptr %chip_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_r_intc_nmi_unmask(ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %cmp = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %chip_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %chip_data, align 4
  %3 = load ptr, ptr @base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @irq_chip_unmask_parent(ptr noundef %data) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_r_intc_nmi_eoi(ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %cmp = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %chip_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %chip_data, align 4
  %7 = load ptr, ptr @base, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @irq_chip_eoi_parent(ptr noundef %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_r_intc_nmi_set_type(ptr noundef %data, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.sun6i_r_intc_nmi_set_type, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %3 = load ptr, ptr @base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %switch.load) #7, !srcloc !51
  %call = tail call i32 @irq_chip_set_type_parent(ptr noundef %data, i32 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_r_intc_irq_set_wake(ptr nocapture noundef readonly %data, i32 noundef %on) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %2 = load i32, ptr @nmi_hwirq, align 4
  %sub = sub i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp = icmp ult i32 %sub, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef %sub, ptr noundef nonnull @wake_irq_enabled) #7
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef %sub, ptr noundef nonnull @wake_irq_enabled) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %div1.i = lshr i32 %1, 5
  %arrayidx.i = getelementptr i32, ptr @wake_mux_valid, i32 %div1.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, 31
  %5 = shl nuw i32 1, %and.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %if.then3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool5.not = icmp eq i32 %on, 0
  br i1 %tobool5.not, label %if.else.i13, label %if.then.i12

if.then.i12:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef %1, ptr noundef nonnull @wake_mux_enabled) #7
  br label %cleanup

if.else.i13:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef %1, ptr noundef nonnull @wake_mux_enabled) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else.i13, %if.then.i12, %if.else.cleanup_crit_edge, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ -1, %if.else.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.else.i ], [ 0, %if.then.i12 ], [ 0, %if.else.i13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_r_intc_nmi_set_irqchip_state(ptr noundef %data, i32 noundef %which, i1 noundef zeroext %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp = icmp ne i32 %which, 0
  %brmerge = or i1 %cmp, %state
  br i1 %brmerge, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @irq_chip_set_parent_state(ptr noundef %data, i32 noundef %which, i1 noundef zeroext %state) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_parent_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_r_intc_suspend() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr @wake_irq_enabled, align 8
  %buf.sroa.0.sroa.0.0.extract.shift = lshr i64 %0, 32
  %buf.sroa.0.sroa.0.0.extract.trunc = trunc i64 %buf.sroa.0.sroa.0.0.extract.shift to i32
  %buf.sroa.0.sroa.7.0.extract.trunc = trunc i64 %0 to i32
  %1 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.sroa.0.0.extract.trunc)
  %2 = load ptr, ptr @base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !51
  %3 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.sroa.7.0.extract.trunc)
  %4 = load ptr, ptr @base, align 4
  %add.ptr.1 = getelementptr i8, ptr %4, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 %3) #7, !srcloc !51
  %buf.sroa.0.0.copyload = load i64, ptr @wake_mux_enabled, align 8
  %buf.sroa.0.sroa.0.0.extract.shift23 = lshr i64 %buf.sroa.0.0.copyload, 32
  %buf.sroa.0.sroa.0.0.extract.trunc24 = trunc i64 %buf.sroa.0.sroa.0.0.extract.shift23 to i32
  %buf.sroa.0.sroa.7.0.extract.trunc25 = trunc i64 %buf.sroa.0.0.copyload to i32
  %buf.sroa.10.0.copyload = load i32, ptr getelementptr inbounds ([4 x i32], ptr @wake_mux_enabled, i32 0, i32 2), align 8
  %buf.sroa.12.0.copyload = load i32, ptr getelementptr inbounds ([4 x i32], ptr @wake_mux_enabled, i32 0, i32 3), align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.sroa.0.0.extract.trunc24)
  %6 = load ptr, ptr @base, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %5) #7, !srcloc !51
  %7 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.sroa.7.0.extract.trunc25)
  %8 = load ptr, ptr @base, align 4
  %add.ptr8.1 = getelementptr i8, ptr %8, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.1, i32 %7) #7, !srcloc !51
  %9 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.10.0.copyload)
  %10 = load ptr, ptr @base, align 4
  %add.ptr8.2 = getelementptr i8, ptr %10, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.2, i32 %9) #7, !srcloc !51
  %11 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.12.0.copyload)
  %12 = load ptr, ptr @base, align 4
  %add.ptr8.3 = getelementptr i8, ptr %12, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.3, i32 %11) #7, !srcloc !51
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_r_intc_shutdown() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr @wake_irq_enabled, align 8
  %buf.sroa.0.sroa.0.0.extract.shift.i = lshr i64 %0, 32
  %buf.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %buf.sroa.0.sroa.0.0.extract.shift.i to i32
  %buf.sroa.0.sroa.7.0.extract.trunc.i = trunc i64 %0 to i32
  %1 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.sroa.0.0.extract.trunc.i) #7
  %2 = load ptr, ptr @base, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #7, !srcloc !51
  %3 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.sroa.7.0.extract.trunc.i) #7
  %4 = load ptr, ptr @base, align 4
  %add.ptr.1.i = getelementptr i8, ptr %4, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 %3) #7, !srcloc !51
  %buf.sroa.0.0.copyload.i = load i64, ptr @wake_mux_enabled, align 8
  %buf.sroa.0.sroa.0.0.extract.shift23.i = lshr i64 %buf.sroa.0.0.copyload.i, 32
  %buf.sroa.0.sroa.0.0.extract.trunc24.i = trunc i64 %buf.sroa.0.sroa.0.0.extract.shift23.i to i32
  %buf.sroa.0.sroa.7.0.extract.trunc25.i = trunc i64 %buf.sroa.0.0.copyload.i to i32
  %buf.sroa.10.0.copyload.i = load i32, ptr getelementptr inbounds ([4 x i32], ptr @wake_mux_enabled, i32 0, i32 2), align 8
  %buf.sroa.12.0.copyload.i = load i32, ptr getelementptr inbounds ([4 x i32], ptr @wake_mux_enabled, i32 0, i32 3), align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.sroa.0.0.extract.trunc24.i) #7
  %6 = load ptr, ptr @base, align 4
  %add.ptr8.i = getelementptr i8, ptr %6, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %5) #7, !srcloc !51
  %7 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.sroa.7.0.extract.trunc25.i) #7
  %8 = load ptr, ptr @base, align 4
  %add.ptr8.1.i = getelementptr i8, ptr %8, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.1.i, i32 %7) #7, !srcloc !51
  %9 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.10.0.copyload.i) #7
  %10 = load ptr, ptr @base, align 4
  %add.ptr8.2.i = getelementptr i8, ptr %10, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.2.i, i32 %9) #7, !srcloc !51
  %11 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.12.0.copyload.i) #7
  %12 = load ptr, ptr @base, align 4
  %add.ptr8.3.i = getelementptr i8, ptr %12, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.3.i, i32 %11) #7, !srcloc !51
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__of_table_sun6i_a31_r_intc, !1, !"__of_table_sun6i_a31_r_intc", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 366, i32 1}
!2 = !{ptr @__of_table_sun50i_h6_r_intc, !3, !"__of_table_sun50i_h6_r_intc", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 379, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 329, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @sun6i_r_intc_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @sun6i_r_intc_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 335, i32 3}
!12 = !{ptr @sun6i_r_intc_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @sun6i_r_intc_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 342, i32 3}
!16 = !{ptr @sun6i_r_intc_init._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @sun6i_r_intc_init._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @nmi_hwirq, !19, !"nmi_hwirq", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 79, i32 24}
!20 = !{ptr @wake_irq_enabled, !21, !"wake_irq_enabled", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 80, i32 8}
!22 = !{ptr @wake_mux_valid, !23, !"wake_mux_valid", i1 false, i1 false}
!23 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 82, i32 8}
!24 = !{ptr @base, !25, !"base", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 78, i32 22}
!26 = !{ptr @sun6i_r_intc_domain_ops, !27, !"sun6i_r_intc_domain_ops", i1 false, i1 false}
!27 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 263, i32 36}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 175, i32 12}
!30 = !{ptr @sun6i_r_intc_nmi_chip, !31, !"sun6i_r_intc_nmi_chip", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 174, i32 24}
!32 = !{ptr @wake_mux_enabled, !33, !"wake_mux_enabled", i1 false, i1 false}
!33 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 81, i32 8}
!34 = !{ptr @sun6i_r_intc_wakeup_chip, !35, !"sun6i_r_intc_wakeup_chip", i1 false, i1 false}
!35 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 187, i32 24}
!36 = !{ptr @sun6i_r_intc_syscore_ops, !37, !"sun6i_r_intc_syscore_ops", i1 false, i1 false}
!37 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 300, i32 27}
!38 = !{ptr @sun6i_a31_r_intc_variant, !39, !"sun6i_a31_r_intc_variant", i1 false, i1 false}
!39 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 355, i32 42}
!40 = !{ptr @sun50i_h6_r_intc_variant, !41, !"sun50i_h6_r_intc_variant", i1 false, i1 false}
!41 = !{!"../drivers/irqchip/irq-sun6i-r.c", i32 368, i32 42}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 4207938}
