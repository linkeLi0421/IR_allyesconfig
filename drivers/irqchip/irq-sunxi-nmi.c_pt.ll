; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-sunxi-nmi.c_pt.bc'
source_filename = "../drivers/irqchip/irq-sunxi-nmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_sc_nmi_reg_offs = type { i32, i32, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__of_table_sun6i_sc_nmi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-sc-nmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_sc_nmi_irq_init }, section "__irqchip_of_table", align 4
@__of_table_sun7i_sc_nmi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-sc-nmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_sc_nmi_irq_init }, section "__irqchip_of_table", align 4
@__of_table_sun9i_nmi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-nmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_nmi_irq_init }, section "__irqchip_of_table", align 4
@sun6i_reg_offs = internal constant %struct.sunxi_sc_nmi_reg_offs { i32 0, i32 4, i32 52 }, section ".init.rodata", align 4
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@sunxi_sc_nmi_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013sunxi-nmi: Could not register interrupt domain.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sunxi_sc_nmi_irq_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/irqchip/irq-sunxi-nmi.c\00", [32 x i8] zeroinitializer }, align 32
@sunxi_sc_nmi_irq_init._entry_ptr = internal global ptr @sunxi_sc_nmi_irq_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sunxi-nmi\00", [22 x i8] zeroinitializer }, align 32
@sunxi_sc_nmi_irq_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013sunxi-nmi: Could not allocate generic interrupt chip.\0A\00", [39 x i8] zeroinitializer }, align 32
@sunxi_sc_nmi_irq_init._entry_ptr.6 = internal global ptr @sunxi_sc_nmi_irq_init._entry.4, section ".printk_index", align 4
@sunxi_sc_nmi_irq_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013sunxi-nmi: unable to parse irq\0A\00", [62 x i8] zeroinitializer }, align 32
@sunxi_sc_nmi_irq_init._entry_ptr.9 = internal global ptr @sunxi_sc_nmi_irq_init._entry.7, section ".printk_index", align 4
@sunxi_sc_nmi_irq_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013sunxi-nmi: unable to map resource\0A\00", [59 x i8] zeroinitializer }, align 32
@sunxi_sc_nmi_irq_init._entry_ptr.12 = internal global ptr @sunxi_sc_nmi_irq_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@sunxi_sc_nmi_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013sunxi-nmi: Cannot assign multiple trigger modes to IRQ %d.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sunxi_sc_nmi_set_type\00", [42 x i8] zeroinitializer }, align 32
@sunxi_sc_nmi_set_type._entry_ptr = internal global ptr @sunxi_sc_nmi_set_type._entry, section ".printk_index", align 4
@sun7i_reg_offs = internal constant %struct.sunxi_sc_nmi_reg_offs { i32 0, i32 4, i32 8 }, section ".init.rodata", align 4
@sun9i_reg_offs = internal constant %struct.sunxi_sc_nmi_reg_offs { i32 0, i32 8, i32 4 }, section ".init.rodata", align 4
@switch.table.sunxi_sc_nmi_set_type = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 3, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 0], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 158, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 162, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 166, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 172, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 180, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 261, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [35 x i8] c"../drivers/irqchip/irq-sunxi-nmi.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 124, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [35 x i8] c"switch.table.sunxi_sc_nmi_set_type\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__of_table_sun6i_sc_nmi, ptr @__of_table_sun7i_sc_nmi, ptr @__of_table_sun9i_nmi, ptr @sunxi_sc_nmi_irq_init._entry, ptr @sunxi_sc_nmi_irq_init._entry.10, ptr @sunxi_sc_nmi_irq_init._entry.4, ptr @sunxi_sc_nmi_irq_init._entry.7, ptr @sunxi_sc_nmi_irq_init._entry_ptr, ptr @sunxi_sc_nmi_irq_init._entry_ptr.12, ptr @sunxi_sc_nmi_irq_init._entry_ptr.6, ptr @sunxi_sc_nmi_irq_init._entry_ptr.9, ptr @sunxi_sc_nmi_set_type._entry, ptr @sunxi_sc_nmi_set_type._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @switch.table.sunxi_sc_nmi_set_type], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_sc_nmi_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_sc_nmi_irq_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_sc_nmi_irq_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_sc_nmi_irq_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_sc_nmi_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sunxi_sc_nmi_set_type to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_sc_nmi_irq_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sunxi_sc_nmi_irq_init(ptr noundef %node, ptr noundef nonnull @sun6i_reg_offs) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun7i_sc_nmi_irq_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sunxi_sc_nmi_irq_init(ptr noundef %node, ptr noundef nonnull @sun7i_reg_offs) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_nmi_irq_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sunxi_sc_nmi_irq_init(ptr noundef %node, ptr noundef nonnull @sun9i_reg_offs) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_sc_nmi_irq_init(ptr noundef %node, ptr nocapture noundef readonly %reg_offs) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %do.end, label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

do.end7:                                          ; preds = %entry
  %call9 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %call1.i, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @handle_fasteoi_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %fail_irqd_remove

if.end17:                                         ; preds = %do.end7
  %call18 = tail call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp eq i32 %call18, 0
  br i1 %cmp, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %fail_irqd_remove

if.end25:                                         ; preds = %if.end17
  %call26 = tail call ptr @irq_get_domain_generic_chip(ptr noundef nonnull %call1.i, i32 noundef 0) #5
  br i1 %tobool.not.i.i, label %if.end25.of_node_full_name.exit_crit_edge, label %cond.true.i

if.end25.of_node_full_name.exit_crit_edge:        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %if.end25.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ @.str.13, %if.end25.of_node_full_name.exit_crit_edge ]
  %call28 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #5
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call28, ptr %reg_base, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end34, label %if.end39

do.end34:                                         ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  %3 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %fail_irqd_remove

if.end39:                                         ; preds = %of_node_full_name.exit
  %type = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 2, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %type, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 1, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 1, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @irq_gc_mask_set_bit, ptr %irq_unmask, align 4
  %irq_eoi = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 1, i32 0, i32 4, i32 7
  %9 = ptrtoint ptr %irq_eoi to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @irq_gc_ack_set_bit, ptr %irq_eoi, align 4
  %irq_set_type = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 1, i32 3
  %10 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sunxi_sc_nmi_set_type, ptr %irq_set_type, align 4
  %flags = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 2, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 66, ptr %flags, align 4
  %pend = getelementptr inbounds %struct.sunxi_sc_nmi_reg_offs, ptr %reg_offs, i32 0, i32 1
  %12 = ptrtoint ptr %pend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pend, align 4
  %ack = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 2, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ack, align 4
  %enable = getelementptr inbounds %struct.sunxi_sc_nmi_reg_offs, ptr %reg_offs, i32 0, i32 2
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enable, align 4
  %mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 2, i32 0, i32 4, i32 1, i32 1
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mask, align 4
  %18 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_offs, align 4
  %type62 = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 2, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %type62 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %type62, align 4
  %type65 = getelementptr %struct.irq_chip_generic, ptr %call26, i32 3, i32 17
  %21 = ptrtoint ptr %type65 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %type65, align 4
  %name = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  %name72 = getelementptr %struct.irq_chip_generic, ptr %call26, i32 2, i32 6
  %24 = ptrtoint ptr %name72 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %name72, align 4
  %irq_ack = getelementptr %struct.irq_chip_generic, ptr %call26, i32 2, i32 11
  %25 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @irq_gc_ack_set_bit, ptr %irq_ack, align 4
  %irq_mask79 = getelementptr %struct.irq_chip_generic, ptr %call26, i32 2, i32 12
  %26 = ptrtoint ptr %irq_mask79 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_mask79, align 4
  %irq_unmask83 = getelementptr %struct.irq_chip_generic, ptr %call26, i32 2, i32 14
  %27 = ptrtoint ptr %irq_unmask83 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @irq_gc_mask_set_bit, ptr %irq_unmask83, align 4
  %irq_set_type87 = getelementptr %struct.irq_chip_generic, ptr %call26, i32 2, i32 18
  %28 = ptrtoint ptr %irq_set_type87 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @sunxi_sc_nmi_set_type, ptr %irq_set_type87, align 4
  %29 = load i32, ptr %pend, align 4
  %ack92 = getelementptr %struct.irq_chip_generic, ptr %call26, i32 3, i32 12
  %30 = ptrtoint ptr %ack92 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ack92, align 4
  %31 = load i32, ptr %enable, align 4
  %mask97 = getelementptr %struct.irq_chip_generic, ptr %call26, i32 3, i32 11
  %32 = ptrtoint ptr %mask97 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %mask97, align 4
  %33 = load i32, ptr %reg_offs, align 4
  %type102 = getelementptr %struct.irq_chip_generic, ptr %call26, i32 3, i32 14
  %34 = ptrtoint ptr %type102 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %type102, align 4
  %handler = getelementptr %struct.irq_chip_generic, ptr %call26, i32 3, i32 16
  %35 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @handle_edge_irq, ptr %handler, align 4
  %36 = load i32, ptr %enable, align 4
  %reg_writel.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 0, i32 3
  %37 = ptrtoint ptr %reg_writel.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_writel.i.i, align 4
  %tobool.not.i.i151 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i151, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr i8, ptr %call28, i32 %36
  tail call void %38(i32 noundef 0, ptr noundef %add.ptr.i.i) #5
  br label %sunxi_sc_nmi_write.exit

do.body.i.i:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_base, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %40, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 0) #5, !srcloc !49
  br label %sunxi_sc_nmi_write.exit

sunxi_sc_nmi_write.exit:                          ; preds = %do.body.i.i, %if.then.i.i
  %41 = ptrtoint ptr %pend to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pend, align 4
  %43 = ptrtoint ptr %reg_writel.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_writel.i.i, align 4
  %tobool.not.i.i153 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i153, label %do.body.i.i159, label %if.then.i.i156

if.then.i.i156:                                   ; preds = %sunxi_sc_nmi_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_base, align 4
  %add.ptr.i.i155 = getelementptr i8, ptr %46, i32 %42
  tail call void %44(i32 noundef 1, ptr noundef %add.ptr.i.i155) #5
  br label %sunxi_sc_nmi_write.exit160

do.body.i.i159:                                   ; preds = %sunxi_sc_nmi_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_base, align 4
  %add.ptr3.i.i158 = getelementptr i8, ptr %48, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i158, i32 16777216) #5, !srcloc !49
  br label %sunxi_sc_nmi_write.exit160

sunxi_sc_nmi_write.exit160:                       ; preds = %do.body.i.i159, %if.then.i.i156
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call18, ptr noundef nonnull @sunxi_sc_nmi_handle_irq, ptr noundef nonnull %call1.i) #5
  br label %cleanup

fail_irqd_remove:                                 ; preds = %do.end34, %do.end22, %do.end14
  %ret.0 = phi i32 [ %call9, %do.end14 ], [ -22, %do.end22 ], [ %5, %do.end34 ]
  tail call void @irq_domain_remove(ptr noundef nonnull %call1.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_irqd_remove, %sunxi_sc_nmi_write.exit160, %do.end
  %retval.0 = phi i32 [ %ret.0, %fail_irqd_remove ], [ 0, %sunxi_sc_nmi_write.exit160 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_sc_nmi_set_type(ptr noundef %data, i32 noundef %flow_type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip_types = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 19
  %type = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 2, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #5
  %and = and i32 %flow_type, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and)
  %4 = icmp ult i32 %and, 9
  br i1 %4, label %switch.hole_check, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %entry.sw.default_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %1) #5
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %6) #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %and to i16
  %switch.shifted = lshr i16 279, %switch.maskindex
  %7 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %switch.lobit.not = icmp eq i16 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.sunxi_sc_nmi_set_type, i32 0, i32 %and
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i = and i32 %12, -16
  store i32 %and.i, ptr %10, align 4
  %13 = load ptr, ptr %common.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %or.i = or i32 %15, %and
  store i32 %or.i, ptr %13, align 4
  %16 = load ptr, ptr %common.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %or6.i = or i32 %18, 33554432
  store i32 %or6.i, ptr %16, align 4
  %call5 = tail call i32 @irq_setup_alt_chip(ptr noundef %data, i32 noundef %flow_type) #5
  %num_ct = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %num_ct to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_ct, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp40.not = icmp eq i32 %20, 0
  br i1 %cmp40.not, label %switch.lookup.for.end_crit_edge, label %switch.lookup.for.body_crit_edge

switch.lookup.for.body_crit_edge:                 ; preds = %switch.lookup
  br label %for.body

switch.lookup.for.end_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %switch.lookup.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %switch.lookup.for.body_crit_edge ]
  %ctrl_off.043 = phi i32 [ %ctrl_off.1, %for.inc.for.body_crit_edge ], [ %3, %switch.lookup.for.body_crit_edge ]
  %ct.041 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %chip_types, %switch.lookup.for.body_crit_edge ]
  %type6 = getelementptr inbounds %struct.irq_chip_type, ptr %ct.041, i32 0, i32 3
  %21 = ptrtoint ptr %type6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type6, align 4
  %and7 = and i32 %22, %flow_type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %type9 = getelementptr inbounds %struct.irq_chip_type, ptr %ct.041, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type9, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %ctrl_off.1 = phi i32 [ %24, %if.then ], [ %ctrl_off.043, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.044, 1
  %incdec.ptr = getelementptr %struct.irq_chip_type, ptr %ct.041, i32 1
  %exitcond.not = icmp eq i32 %inc, %20
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %switch.lookup.for.end_crit_edge
  %ctrl_off.0.lcssa = phi i32 [ %3, %switch.lookup.for.end_crit_edge ], [ %ctrl_off.1, %for.inc.for.end_crit_edge ]
  %reg_readl.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %reg_readl.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_readl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  %reg_base2.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %reg_base2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base2.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %28, i32 %ctrl_off.0.lcssa
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %26(ptr noundef %add.ptr3.i.i) #5
  br label %sunxi_sc_nmi_read.exit

if.else.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #5, !srcloc !50
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  br label %sunxi_sc_nmi_read.exit

sunxi_sc_nmi_read.exit:                           ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %30, %if.else.i.i ]
  %and11 = and i32 %retval.0.i.i, -4
  %or = or i32 %and11, %switch.load
  %reg_writel.i.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %reg_writel.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_writel.i.i, align 4
  %tobool.not.i.i36 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i36, label %do.body.i.i, label %if.then.i.i37

if.then.i.i37:                                    ; preds = %sunxi_sc_nmi_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %reg_base2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base2.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %ctrl_off.0.lcssa
  tail call void %32(i32 noundef %or, ptr noundef %add.ptr.i.i) #5
  br label %sunxi_sc_nmi_write.exit

do.body.i.i:                                      ; preds = %sunxi_sc_nmi_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %35 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %36 = ptrtoint ptr %reg_base2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base2.i.i, align 4
  %add.ptr3.i.i39 = getelementptr i8, ptr %37, i32 %ctrl_off.0.lcssa
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i39, i32 %35) #5, !srcloc !49
  br label %sunxi_sc_nmi_write.exit

sunxi_sc_nmi_write.exit:                          ; preds = %do.body.i.i, %if.then.i.i37
  tail call void @_raw_spin_unlock(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %sunxi_sc_nmi_write.exit, %sw.default
  %retval.0 = phi i32 [ -53, %sw.default ], [ 0, %sunxi_sc_nmi_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_sc_nmi_handle_irq(ptr noundef %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #5
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #5
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %11(ptr noundef %irq_data4.i) #5
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %call2 = tail call i32 @generic_handle_domain_irq(ptr noundef %1, i32 noundef 0) #5
  %12 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i8 = icmp eq ptr %13, null
  br i1 %tobool.not.i8, label %if.else.i9, label %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge

chained_irq_enter.exit.chained_irq_exit.exit_crit_edge: ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_exit.exit

if.else.i9:                                       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i9, %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %15, %if.else.i9 ], [ %13, %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_setup_alt_chip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__of_table_sun6i_sc_nmi, !1, !"__of_table_sun6i_sc_nmi", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-sunxi-nmi.c", i32 227, i32 1}
!2 = !{ptr @__of_table_sun7i_sc_nmi, !3, !"__of_table_sun7i_sc_nmi", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-sunxi-nmi.c", i32 234, i32 1}
!4 = !{ptr @__of_table_sun9i_nmi, !5, !"__of_table_sun9i_nmi", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-sunxi-nmi.c", i32 241, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-sunxi-nmi.c", i32 158, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sunxi_sc_nmi_irq_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @sunxi_sc_nmi_irq_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-sunxi-nmi.c", i32 162, i32 8}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-sunxi-nmi.c", i32 166, i32 3}
!16 = !{ptr @sunxi_sc_nmi_irq_init._entry.4, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @sunxi_sc_nmi_irq_init._entry_ptr.6, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-sunxi-nmi.c", i32 172, i32 3}
!20 = !{ptr @sunxi_sc_nmi_irq_init._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @sunxi_sc_nmi_irq_init._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/irqchip/irq-sunxi-nmi.c", i32 180, i32 3}
!24 = !{ptr @sunxi_sc_nmi_irq_init._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sunxi_sc_nmi_irq_init._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/of.h", i32 261, i32 30}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-sunxi-nmi.c", i32 124, i32 3}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sunxi_sc_nmi_set_type._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @sunxi_sc_nmi_set_type._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @sun6i_reg_offs, !34, !"sun6i_reg_offs", i1 false, i1 false}
!34 = !{!"../drivers/irqchip/irq-sunxi-nmi.c", i32 58, i32 43}
!35 = !{ptr @sun7i_reg_offs, !36, !"sun7i_reg_offs", i1 false, i1 false}
!36 = !{!"../drivers/irqchip/irq-sunxi-nmi.c", i32 64, i32 43}
!37 = !{ptr @sun9i_reg_offs, !38, !"sun9i_reg_offs", i1 false, i1 false}
!38 = !{!"../drivers/irqchip/irq-sunxi-nmi.c", i32 70, i32 43}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2152821128}
!49 = !{i64 4775566}
!50 = !{i64 4775984}
!51 = !{i64 2152821998}
