; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-digicolor.c_pt.bc'
source_filename = "../drivers/irqchip/irq-digicolor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x ptr] }

@__of_table_conexant_digicolor_ic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cnxt,cx92755-ic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @digicolor_of_init }, section "__irqchip_of_table", align 4
@digicolor_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%pOF: unable to map IC registers\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"digicolor_of_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/irqchip/irq-digicolor.c\00", [32 x i8] zeroinitializer }, align 32
@digicolor_of_init._entry_ptr = internal global ptr @digicolor_of_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@digicolor_of_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%pOF: unable to map UC registers\0A\00", [60 x i8] zeroinitializer }, align 32
@digicolor_of_init._entry_ptr.6 = internal global ptr @digicolor_of_init._entry.4, section ".printk_index", align 4
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@digicolor_irq_domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@digicolor_of_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%pOF: unable to create IRQ domain\0A\00", [59 x i8] zeroinitializer }, align 32
@digicolor_of_init._entry_ptr.9 = internal global ptr @digicolor_of_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"digicolor_irq\00", [18 x i8] zeroinitializer }, align 32
@digicolor_of_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%pOF: unable to allocate IRQ gc\0A\00", [61 x i8] zeroinitializer }, align 32
@digicolor_of_init._entry_ptr.13 = internal global ptr @digicolor_of_init._entry.11, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 81, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 89, i32 49 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 91, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"digicolor_irq_domain\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 33, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 100, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 104, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [35 x i8] c"../drivers/irqchip/irq-digicolor.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 108, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__of_table_conexant_digicolor_ic, ptr @digicolor_of_init._entry, ptr @digicolor_of_init._entry.11, ptr @digicolor_of_init._entry.4, ptr @digicolor_of_init._entry.7, ptr @digicolor_of_init._entry_ptr, ptr @digicolor_of_init._entry_ptr.13, ptr @digicolor_of_init._entry_ptr.6, ptr @digicolor_of_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @digicolor_irq_domain, ptr @.str.8, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digicolor_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digicolor_of_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digicolor_irq_domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digicolor_of_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digicolor_of_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @digicolor_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node) #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %add.ptr = getelementptr i8, ptr %call, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %add.ptr8 = getelementptr i8, ptr %call, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #5, !srcloc !36
  %call9 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %node, ptr noundef nonnull @.str.3) #5
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end18

do.end14:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %node) #8
  %0 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end18:                                         ; preds = %do.body2
  %call19 = tail call i32 @regmap_write(ptr noundef %call9, i32 noundef 4, i32 noundef 1) #5
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 64, i32 noundef 64, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #5
  store ptr %call1.i, ptr @digicolor_irq_domain, align 4
  %tobool21.not = icmp eq ptr %call1.i, null
  br i1 %tobool21.not, label %do.end25, label %do.end34

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %node) #8
  br label %cleanup

do.end34:                                         ; preds = %if.end18
  %call36 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %call1.i, i32 noundef 32, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @handle_level_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %node) #8
  br label %cleanup

if.end44:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  %1 = load ptr, ptr @digicolor_irq_domain, align 4
  %call.i = tail call ptr @irq_get_domain_generic_chip(ptr noundef %1, i32 noundef 0) #5
  %reg_base1.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %reg_base1.i, align 4
  %ack.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i, i32 2, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ack.i, align 4
  %mask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i, i32 2, i32 0, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %mask.i, align 4
  %irq_ack.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i, i32 1, i32 0, i32 4, i32 1, i32 1
  %5 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @irq_gc_ack_set_bit, ptr %irq_ack.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i, i32 1, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_mask.i, align 4
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i, i32 1, i32 0, i32 4, i32 6
  %7 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @irq_gc_mask_set_bit, ptr %irq_unmask.i, align 4
  %8 = load ptr, ptr @digicolor_irq_domain, align 4
  %call.i62 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %8, i32 noundef 32) #5
  %reg_base1.i63 = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i62, i32 0, i32 1
  %9 = ptrtoint ptr %reg_base1.i63 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %reg_base1.i63, align 4
  %ack.i64 = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i62, i32 2, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %ack.i64 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %ack.i64, align 4
  %mask.i65 = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i62, i32 2, i32 0, i32 4, i32 1, i32 1
  %11 = ptrtoint ptr %mask.i65 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 20, ptr %mask.i65, align 4
  %irq_ack.i66 = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i62, i32 1, i32 0, i32 4, i32 1, i32 1
  %12 = ptrtoint ptr %irq_ack.i66 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @irq_gc_ack_set_bit, ptr %irq_ack.i66, align 4
  %irq_mask.i67 = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i62, i32 1, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %irq_mask.i67 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_mask.i67, align 4
  %irq_unmask.i68 = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i62, i32 1, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %irq_unmask.i68 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @irq_gc_mask_set_bit, ptr %irq_unmask.i68, align 4
  %call45 = tail call i32 @set_handle_irq(ptr noundef nonnull @digicolor_handle_irq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end41, %do.end25, %do.end14, %do.end
  %retval.0 = phi i32 [ %0, %do.end14 ], [ %call36, %do.end41 ], [ 0, %if.end44 ], [ -12, %do.end25 ], [ -6, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digicolor_handle_irq(ptr nocapture noundef readnone %regs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @digicolor_irq_domain, align 4
  %gc = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gc, align 4
  %gc2 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %gc2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gc2, align 4
  %reg_readl.i = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 2
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end10, %entry
  %5 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  %7 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %8, i32 24
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %6(ptr noundef %add.ptr3.i) #5
  br label %irq_reg_readl.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #5, !srcloc !38
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  br label %irq_reg_readl.exit

irq_reg_readl.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %10, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %11 = tail call i32 @llvm.cttz.i32(i32 %retval.0.i, i1 true), !range !40
  br label %if.end10

if.else:                                          ; preds = %irq_reg_readl.exit
  %12 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i20 = icmp eq ptr %13, null
  %14 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i22 = getelementptr i8, ptr %15, i32 28
  br i1 %tobool.not.i20, label %if.else.i25, label %if.then.i24

if.then.i24:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call.i23 = tail call i32 %13(ptr noundef %add.ptr3.i22) #5
  br label %irq_reg_readl.exit27

if.else.i25:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i22) #5, !srcloc !38
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  br label %irq_reg_readl.exit27

irq_reg_readl.exit27:                             ; preds = %if.else.i25, %if.then.i24
  %retval.0.i26 = phi i32 [ %call.i23, %if.then.i24 ], [ %17, %if.else.i25 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i26)
  %tobool4.not = icmp eq i32 %retval.0.i26, 0
  br i1 %tobool4.not, label %if.else9, label %if.then5

if.then5:                                         ; preds = %irq_reg_readl.exit27
  call void @__sanitizer_cov_trace_pc() #7
  %18 = tail call i32 @llvm.cttz.i32(i32 %retval.0.i26, i1 true), !range !40
  %add = or i32 %18, 32
  br label %if.end10

if.else9:                                         ; preds = %irq_reg_readl.exit27
  call void @__sanitizer_cov_trace_pc() #7
  ret void

if.end10:                                         ; preds = %if.then5, %if.then
  %hwirq.0 = phi i32 [ %11, %if.then ], [ %add, %if.then5 ]
  %19 = load ptr, ptr @digicolor_irq_domain, align 4
  %call11 = tail call i32 @generic_handle_domain_irq(ptr noundef %19, i32 noundef %hwirq.0) #5
  br label %do.body
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__of_table_conexant_digicolor_ic, !1, !"__of_table_conexant_digicolor_ic", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-digicolor.c", i32 119, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-digicolor.c", i32 81, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @digicolor_of_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @digicolor_of_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-digicolor.c", i32 89, i32 49}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-digicolor.c", i32 91, i32 3}
!12 = !{ptr @digicolor_of_init._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @digicolor_of_init._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-digicolor.c", i32 100, i32 3}
!16 = !{ptr @digicolor_of_init._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @digicolor_of_init._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-digicolor.c", i32 104, i32 8}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-digicolor.c", i32 108, i32 3}
!22 = !{ptr @digicolor_of_init._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @digicolor_of_init._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @digicolor_irq_domain, !25, !"digicolor_irq_domain", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-digicolor.c", i32 33, i32 27}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2153680646}
!36 = !{i64 686403}
!37 = !{i64 2153681028}
!38 = !{i64 686821}
!39 = !{i64 2152427810}
!40 = !{i32 0, i32 33}
