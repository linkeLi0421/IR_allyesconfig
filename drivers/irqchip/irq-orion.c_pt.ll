; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-orion.c_pt.bc'
source_filename = "../drivers/irqchip/irq-orion.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x ptr] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }

@__of_table_orion_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_irq_init }, section "__irqchip_of_table", align 4
@__of_table_orion_bridge_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-bridge-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_bridge_irq_init }, section "__irqchip_of_table", align 4
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@orion_irq_domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%pOFn: unable to add irq domain\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%pOFn: unable to alloc irq domain gc\0A\00", [58 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%pOFn: unable to request mem region %d\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%pOFn: unable to map resource %d\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"marvell,#interrupts\00", [44 x i8] zeroinitializer }, align 32
@orion_bridge_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%pOFn: unable to add irq domain\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"orion_bridge_irq_init\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/irqchip/irq-orion.c\00", [36 x i8] zeroinitializer }, align 32
@orion_bridge_irq_init._entry_ptr = internal global ptr @orion_bridge_irq_init._entry, section ".printk_index", align 4
@orion_bridge_irq_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%pOFn: unable to alloc irq domain gc\0A\00", [56 x i8] zeroinitializer }, align 32
@orion_bridge_irq_init._entry_ptr.10 = internal global ptr @orion_bridge_irq_init._entry.8, section ".printk_index", align 4
@orion_bridge_irq_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%pOFn: unable to get resource\0A\00", [63 x i8] zeroinitializer }, align 32
@orion_bridge_irq_init._entry_ptr.13 = internal global ptr @orion_bridge_irq_init._entry.11, section ".printk_index", align 4
@orion_bridge_irq_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: unable to request mem region\0A\00", [60 x i8] zeroinitializer }, align 32
@orion_bridge_irq_init._entry_ptr.16 = internal global ptr @orion_bridge_irq_init._entry.14, section ".printk_index", align 4
@orion_bridge_irq_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.7, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%pOFn: unable to parse irq\0A\00", [34 x i8] zeroinitializer }, align 32
@orion_bridge_irq_init._entry_ptr.19 = internal global ptr @orion_bridge_irq_init._entry.17, section ".printk_index", align 4
@orion_bridge_irq_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.7, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%pOFn: unable to map resource\0A\00", [63 x i8] zeroinitializer }, align 32
@orion_bridge_irq_init._entry_ptr.22 = internal global ptr @orion_bridge_irq_init._entry.20, section ".printk_index", align 4
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"orion_irq_domain\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 30, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 67, i32 9 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 74, i32 9 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 83, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 88, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 148, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 153, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 160, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 166, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 171, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 178, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [31 x i8] c"../drivers/irqchip/irq-orion.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 185, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__of_table_orion_bridge_intc, ptr @__of_table_orion_intc, ptr @orion_bridge_irq_init._entry, ptr @orion_bridge_irq_init._entry.11, ptr @orion_bridge_irq_init._entry.14, ptr @orion_bridge_irq_init._entry.17, ptr @orion_bridge_irq_init._entry.20, ptr @orion_bridge_irq_init._entry.8, ptr @orion_bridge_irq_init._entry_ptr, ptr @orion_bridge_irq_init._entry_ptr.10, ptr @orion_bridge_irq_init._entry_ptr.13, ptr @orion_bridge_irq_init._entry_ptr.16, ptr @orion_bridge_irq_init._entry_ptr.19, ptr @orion_bridge_irq_init._entry_ptr.22, ptr @orion_irq_domain, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_irq_domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_bridge_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_bridge_irq_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_bridge_irq_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_bridge_irq_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_bridge_irq_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_bridge_irq_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_irq_init(ptr noundef %np, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  %r = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #7
  %0 = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 1
  %1 = call ptr @memset(ptr %r, i32 255, i32 32)
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_chips.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef %num_chips.0, ptr noundef nonnull %r) #7
  %cmp = icmp eq i32 %call, 0
  %inc = add i32 %num_chips.0, 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %mul = shl i32 %num_chips.0, 5
  %tobool.not.i.i = icmp eq ptr %np, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %mul, i32 noundef %mul, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #7
  store ptr %call1.i, ptr @orion_irq_domain, align 4
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %if.then, label %do.end4

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef %np) #10
  unreachable

do.end4:                                          ; preds = %while.end
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %2 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %full_name, align 4
  %call5 = call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %call1.i, i32 noundef 32, i32 noundef 1, ptr noundef %3, ptr noundef nonnull @handle_level_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.cond.preheader, label %if.then7

for.cond.preheader:                               ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_chips.0)
  %cmp962 = icmp sgt i32 %num_chips.0, 0
  br i1 %cmp962, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then7:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, ptr noundef %np) #10
  unreachable

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %base.064 = phi i32 [ %add, %if.end23.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %n.063 = phi i32 [ %inc33, %if.end23.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = load ptr, ptr @orion_irq_domain, align 4
  %call10 = call ptr @irq_get_domain_generic_chip(ptr noundef %4, i32 noundef %base.064) #7
  %call11 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef %n.063, ptr noundef nonnull %r) #7
  %5 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %r, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %6
  %add.i = add i32 %sub.i, %8
  %9 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %np, align 4
  %call13 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %6, i32 noundef %add.i, ptr noundef %10, i32 noundef 0) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.2, ptr noundef %np, i32 noundef %n.063) #10
  unreachable

if.end16:                                         ; preds = %for.body
  %11 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %r, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 4
  %sub.i57 = sub i32 1, %12
  %add.i58 = add i32 %sub.i57, %14
  %call19 = call ptr @ioremap(i32 noundef %12, i32 noundef %add.i58) #7
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call10, i32 0, i32 1
  %15 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call19, ptr %reg_base, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.3, ptr noundef %np, i32 noundef %n.063) #10
  unreachable

if.end23:                                         ; preds = %if.end16
  %mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call10, i32 2, i32 0, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %mask, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call10, i32 1, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call10, i32 1, i32 0, i32 4, i32 6
  %18 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @irq_gc_mask_set_bit, ptr %irq_unmask, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !52
  %inc33 = add nuw nsw i32 %n.063, 1
  %add = add i32 %base.064, 32
  %exitcond.not = icmp eq i32 %inc33, %num_chips.0
  br i1 %exitcond.not, label %if.end23.for.end_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call34 = call i32 @set_handle_irq(ptr noundef nonnull @orion_handle_irq) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_bridge_irq_init(ptr noundef %np, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  %r = alloca %struct.resource, align 4
  %nrirqs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #7
  %0 = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 1
  %1 = call ptr @memset(ptr %r, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nrirqs) #7
  %2 = ptrtoint ptr %nrirqs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %nrirqs, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef nonnull %nrirqs, i32 noundef 1, i32 noundef 0) #7
  %3 = ptrtoint ptr %nrirqs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nrirqs, align 4
  %tobool.not.i.i = icmp eq ptr %np, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %4, i32 noundef %4, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %np) #11
  br label %cleanup

do.body3:                                         ; preds = %entry
  %5 = ptrtoint ptr %nrirqs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nrirqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cmp = icmp sgt i32 %6, 32
  br i1 %cmp, label %do.body18, label %do.end29, !prof !53

do.body18:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-orion.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 158, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

do.end29:                                         ; preds = %do.body3
  %7 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %np, align 4
  %call31 = call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %call1.i, i32 noundef %6, i32 noundef 1, ptr noundef %8, ptr noundef nonnull @handle_edge_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %np) #11
  br label %cleanup

if.end39:                                         ; preds = %do.end29
  %call40 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %r) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end48, label %do.end45

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %np) #11
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  %9 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %r, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %12
  %13 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %np, align 4
  %call51 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %add.i, ptr noundef %14, i32 noundef 0) #7
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %do.end56, label %if.end60

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %np, align 4
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %16) #11
  br label %cleanup

if.end60:                                         ; preds = %if.end48
  %call61 = call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 1
  br i1 %cmp62, label %do.end67, label %if.end70

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %np) #11
  br label %cleanup

if.end70:                                         ; preds = %if.end60
  %call71 = call ptr @irq_get_domain_generic_chip(ptr noundef nonnull %call1.i, i32 noundef 0) #7
  %17 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %r, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 4
  %sub.i141 = sub i32 1, %18
  %add.i142 = add i32 %sub.i141, %20
  %call74 = call ptr @ioremap(i32 noundef %18, i32 noundef %add.i142) #7
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call71, i32 0, i32 1
  %21 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call74, ptr %reg_base, align 4
  %tobool76.not = icmp eq ptr %call74, null
  br i1 %tobool76.not, label %do.end80, label %if.end83

do.end80:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %np) #11
  br label %cleanup

if.end83:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %ack = getelementptr inbounds %struct.irq_chip_generic, ptr %call71, i32 2, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ack, align 4
  %mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call71, i32 2, i32 0, i32 4, i32 1, i32 1
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %mask, align 4
  %irq_startup = getelementptr inbounds %struct.irq_chip_generic, ptr %call71, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %irq_startup to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @orion_bridge_irq_startup, ptr %irq_startup, align 4
  %irq_ack = getelementptr inbounds %struct.irq_chip_generic, ptr %call71, i32 1, i32 0, i32 4, i32 1, i32 1
  %25 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @irq_gc_ack_clr_bit, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call71, i32 1, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call71, i32 1, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @irq_gc_mask_set_bit, ptr %irq_unmask, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #7, !srcloc !52
  call void @irq_set_chained_handler_and_data(i32 noundef %call61, ptr noundef nonnull @orion_bridge_irq_handler, ptr noundef nonnull %call1.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %do.end80, %do.end67, %do.end56, %do.end45, %do.end36, %do.end
  %retval.0 = phi i32 [ %call31, %do.end36 ], [ %call40, %do.end45 ], [ -22, %do.end67 ], [ 0, %if.end83 ], [ -12, %do.end80 ], [ -12, %do.end56 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrirqs) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @orion_handle_irq(ptr nocapture noundef readnone %regs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @orion_irq_domain, align 4
  %gc = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gc, align 4
  %num_chips = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %num_chips to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_chips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp16.not = icmp eq i32 %4, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %while.end.for.body_crit_edge, %entry.for.body_crit_edge
  %n.018 = phi i32 [ %inc, %while.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %base.017 = phi i32 [ %add6, %while.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %5 = load ptr, ptr @orion_irq_domain, align 4
  %call = tail call ptr @irq_get_domain_generic_chip(ptr noundef %5, i32 noundef %base.017) #7
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !57
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %mask_cache = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 8
  %10 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask_cache, align 4
  %and = and i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not14 = icmp eq i32 %and, 0
  br i1 %tobool.not14, label %for.body.while.end_crit_edge, label %while.body.lr.ph

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.body
  %irq_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %stat.015 = phi i32 [ %and, %while.body.lr.ph ], [ %and5, %while.body.while.body_crit_edge ]
  %12 = tail call i32 @llvm.ctlz.i32(i32 %stat.015, i1 true) #7, !range !58
  %sub.i = xor i32 %12, 31
  %13 = load ptr, ptr @orion_irq_domain, align 4
  %14 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_base, align 4
  %add = add i32 %15, %sub.i
  %call4 = tail call i32 @generic_handle_domain_irq(ptr noundef %13, i32 noundef %add) #7
  %shl = shl nuw i32 1, %sub.i
  %neg = xor i32 %shl, -1
  %and5 = and i32 %stat.015, %neg
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  %inc = add nuw i32 %n.018, 1
  %add6 = add i32 %base.017, 32
  %16 = ptrtoint ptr %num_chips to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_chips, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_bridge_irq_startup(ptr noundef %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %irq_ack = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq_ack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_ack, align 4
  tail call void %3(ptr noundef %d) #7
  %irq_unmask = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_unmask, align 4
  tail call void %5(ptr noundef %d) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_clr_bit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @orion_bridge_irq_handler(ptr nocapture noundef readonly %desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %call1 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %1, i32 noundef 0) #7
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !57
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %mask_cache = getelementptr inbounds %struct.irq_chip_generic, ptr %call1, i32 0, i32 8
  %6 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask_cache, align 4
  %and = and i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not12 = icmp eq i32 %and, 0
  br i1 %tobool.not12, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %irq_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call1, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %stat.013 = phi i32 [ %and, %while.body.lr.ph ], [ %and5, %while.body.while.body_crit_edge ]
  %8 = tail call i32 @llvm.ctlz.i32(i32 %stat.013, i1 true) #7, !range !58
  %sub.i = xor i32 %8, 31
  %9 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_base, align 4
  %add = add i32 %10, %sub.i
  %call4 = tail call i32 @generic_handle_domain_irq(ptr noundef %1, i32 noundef %add) #7
  %shl = shl nuw i32 1, %sub.i
  %neg = xor i32 %shl, -1
  %and5 = and i32 %stat.013, %neg
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__of_table_orion_intc, !1, !"__of_table_orion_intc", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-orion.c", i32 101, i32 1}
!2 = !{ptr @__of_table_orion_bridge_intc, !3, !"__of_table_orion_bridge_intc", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-orion.c", i32 205, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-orion.c", i32 67, i32 9}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-orion.c", i32 74, i32 9}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-orion.c", i32 83, i32 10}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-orion.c", i32 88, i32 10}
!12 = !{ptr @orion_irq_domain, !13, !"orion_irq_domain", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-orion.c", i32 30, i32 27}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-orion.c", i32 148, i32 27}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-orion.c", i32 153, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @orion_bridge_irq_init._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @orion_bridge_irq_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/irqchip/irq-orion.c", i32 160, i32 3}
!24 = !{ptr @orion_bridge_irq_init._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @orion_bridge_irq_init._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/irqchip/irq-orion.c", i32 166, i32 3}
!28 = !{ptr @orion_bridge_irq_init._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @orion_bridge_irq_init._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-orion.c", i32 171, i32 3}
!32 = !{ptr @orion_bridge_irq_init._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @orion_bridge_irq_init._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/irqchip/irq-orion.c", i32 178, i32 3}
!36 = !{ptr @orion_bridge_irq_init._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @orion_bridge_irq_init._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/irqchip/irq-orion.c", i32 185, i32 3}
!40 = !{ptr @orion_bridge_irq_init._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @orion_bridge_irq_init._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2153600302}
!52 = !{i64 688960}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 2153605836, i64 2153606328, i64 2153605873, i64 2153605929, i64 2153605963, i64 2153605987, i64 2153606028, i64 2153606049, i64 2153606077, i64 2153606111}
!55 = !{i64 2153615397}
!56 = !{i64 2153615787}
!57 = !{i64 689378}
!58 = !{i32 0, i32 33}
