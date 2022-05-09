; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-versatile-fpga.c_pt.bc'
source_filename = "../drivers/irqchip/irq-versatile-fpga.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fpga_irq_data = type { ptr, %struct.irq_chip, i32, ptr, i8 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@fpga_irq_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fpga_irq_devices = internal global { [4 x %struct.fpga_irq_data], [128 x i8] } zeroinitializer, align 32
@fpga_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013%s: too few FPGA IRQ controllers, increase CONFIG_VERSATILE_FPGA_IRQ_NR\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fpga_irq_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/irqchip/irq-versatile-fpga.c\00", [59 x i8] zeroinitializer }, align 32
@fpga_irq_init._entry_ptr = internal global ptr @fpga_irq_init._entry, section ".printk_index", align 4
@fpga_irqdomain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @fpga_irqdomain_map, ptr null, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@fpga_irq_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016FPGA IRQ chip %d \22%s\22 @ %p, %u irqs\00", [58 x i8] zeroinitializer }, align 32
@fpga_irq_init._entry_ptr.5 = internal global ptr @fpga_irq_init._entry.3, section ".printk_index", align 4
@fpga_irq_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01c, parent IRQ: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@fpga_irq_init._entry_ptr.8 = internal global ptr @fpga_irq_init._entry.6, section ".printk_index", align 4
@fpga_irq_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@fpga_irq_init._entry_ptr.11 = internal global ptr @fpga_irq_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to map fpga irq registers\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clear-mask\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"valid-mask\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,versatile-sic\00", [46 x i8] zeroinitializer }, align 32
@__of_table_arm_fpga = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,versatile-fpga-irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fpga_irq_of_init }, section "__irqchip_of_table", align 4
@__of_table_arm_fpga_sic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,versatile-sic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fpga_irq_of_init }, section "__irqchip_of_table", align 4
@__of_table_ox810se_rps = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"oxsemi,ox810se-rps-irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fpga_irq_of_init }, section "__irqchip_of_table", align 4
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"fpga_irq_id\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 52, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"fpga_irq_devices\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 51, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 156, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"fpga_irqdomain_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 144, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 184, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 187, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 189, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 207, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 209, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 212, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [40 x i8] c"../drivers/irqchip/irq-versatile-fpga.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 232, i32 36 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__of_table_arm_fpga, ptr @__of_table_arm_fpga_sic, ptr @__of_table_ox810se_rps, ptr @fpga_irq_init._entry, ptr @fpga_irq_init._entry.3, ptr @fpga_irq_init._entry.6, ptr @fpga_irq_init._entry.9, ptr @fpga_irq_init._entry_ptr, ptr @fpga_irq_init._entry_ptr.11, ptr @fpga_irq_init._entry_ptr.5, ptr @fpga_irq_init._entry_ptr.8, ptr @fpga_irq_id, ptr @fpga_irq_devices, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fpga_irqdomain_ops, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_irq_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_irq_devices to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_irqdomain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_irq_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_irq_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_irq_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fpga_handle_irq(ptr nocapture readnone %regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %.pr = load i32, ptr @fpga_irq_id, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %0 = phi i32 [ %12, %do.cond.do.body_crit_edge ], [ %.pr, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp4 = icmp sgt i32 %0, 0
  br i1 %cmp4, label %do.body.for.body_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %handle_one_fpga.exit.for.body_crit_edge, %do.body.for.body_crit_edge
  %handled.07 = phi i32 [ %or, %handle_one_fpga.exit.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %i.05 = phi i32 [ %inc, %handle_one_fpga.exit.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.fpga_irq_data], ptr @fpga_irq_devices, i32 0, i32 %i.05
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not1.i = icmp eq i32 %3, 0
  br i1 %tobool.not1.i, label %for.body.handle_one_fpga.exit_crit_edge, label %while.body.lr.ph.i

for.body.handle_one_fpga.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_one_fpga.exit

while.body.lr.ph.i:                               ; preds = %for.body
  %domain.i = getelementptr [4 x %struct.fpga_irq_data], ptr @fpga_irq_devices, i32 0, i32 %i.05, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %4 = phi i32 [ %3, %while.body.lr.ph.i ], [ %11, %while.body.i.while.body.i_crit_edge ]
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true) #6, !range !49
  %7 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain.i, align 4
  %call2.i = tail call i32 @generic_handle_domain_irq(ptr noundef %8, i32 noundef %6) #6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %while.body.i.handle_one_fpga.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.handle_one_fpga.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_one_fpga.exit

handle_one_fpga.exit:                             ; preds = %while.body.i.handle_one_fpga.exit_crit_edge, %for.body.handle_one_fpga.exit_crit_edge
  %handled.0.lcssa.i = phi i32 [ 0, %for.body.handle_one_fpga.exit_crit_edge ], [ 1, %while.body.i.handle_one_fpga.exit_crit_edge ]
  %or = or i32 %handled.0.lcssa.i, %handled.07
  %inc = add nuw nsw i32 %i.05, 1
  %12 = load i32, ptr @fpga_irq_id, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %handle_one_fpga.exit.for.body_crit_edge, label %do.cond

handle_one_fpga.exit.for.body_crit_edge:          ; preds = %handle_one_fpga.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.cond:                                          ; preds = %handle_one_fpga.exit
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fpga_irq_init(ptr noundef %base, ptr noundef %name, i32 noundef %irq_start, i32 noundef %parent_irq, i32 noundef %valid, ptr noundef %node) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @fpga_irq_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp ugt i32 %0, 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x %struct.fpga_irq_data], ptr @fpga_irq_devices, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %arrayidx, align 4
  %name2 = getelementptr [4 x %struct.fpga_irq_data], ptr @fpga_irq_devices, i32 0, i32 %0, i32 1, i32 1
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %name, ptr %name2, align 4
  %irq_ack = getelementptr [4 x %struct.fpga_irq_data], ptr @fpga_irq_devices, i32 0, i32 %0, i32 1, i32 6
  %3 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @fpga_irq_mask, ptr %irq_ack, align 4
  %irq_mask = getelementptr [4 x %struct.fpga_irq_data], ptr @fpga_irq_devices, i32 0, i32 %0, i32 1, i32 7
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @fpga_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr [4 x %struct.fpga_irq_data], ptr @fpga_irq_devices, i32 0, i32 %0, i32 1, i32 9
  %5 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @fpga_irq_unmask, ptr %irq_unmask, align 4
  %valid6 = getelementptr [4 x %struct.fpga_irq_data], ptr @fpga_irq_devices, i32 0, i32 %0, i32 2
  %6 = ptrtoint ptr %valid6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %valid, ptr %valid6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %parent_irq)
  %cmp7.not = icmp eq i32 %parent_irq, -1
  br i1 %cmp7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %parent_irq, ptr noundef nonnull @fpga_irq_handle, ptr noundef %arrayidx) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid)
  %tobool.not.i = icmp eq i32 %valid, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %valid, i1 true) #6, !range !49
  %sub.i = sub nuw nsw i32 32, %7
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @irq_domain_create_simple(ptr noundef %spec.select.i.i, i32 noundef %cond.i, i32 noundef %irq_start, ptr noundef nonnull @fpga_irqdomain_ops, ptr noundef %arrayidx) #6
  %domain = getelementptr [4 x %struct.fpga_irq_data], ptr @fpga_irq_devices, i32 0, i32 %0, i32 3
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i, ptr %domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp1370.not = icmp eq i32 %cond.i, 0
  br i1 %cmp1370.not, label %if.end9.do.end24_crit_edge, label %for.body.lr.ph

if.end9.do.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

for.body.lr.ph:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_start)
  %tobool15.not = icmp eq i32 %irq_start, 0
  %used_irqs = getelementptr [4 x %struct.fpga_irq_data], ptr @fpga_irq_devices, i32 0, i32 %0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.071
  %and = and i32 %shl, %valid
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then14:                                        ; preds = %for.body
  br i1 %tobool15.not, label %if.then16, label %if.then14.if.end19_crit_edge

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %domain, align 4
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %10, i32 noundef %i.071, ptr noundef null) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then14.if.end19_crit_edge
  %11 = ptrtoint ptr %used_irqs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %used_irqs, align 4
  %inc = add i8 %12, 1
  store i8 %inc, ptr %used_irqs, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %for.body.for.inc_crit_edge
  %inc21 = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc21, %cond.i
  br i1 %exitcond.not, label %for.inc.do.end24_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end24_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.end24:                                         ; preds = %for.inc.do.end24_crit_edge, %if.end9.do.end24_crit_edge
  %13 = load i32, ptr @fpga_irq_id, align 4
  %used_irqs26 = getelementptr [4 x %struct.fpga_irq_data], ptr @fpga_irq_devices, i32 0, i32 %0, i32 4
  %14 = ptrtoint ptr %used_irqs26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %used_irqs26, align 4
  %conv = zext i8 %15 to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %13, ptr noundef %name, ptr noundef %base, i32 noundef %conv) #9
  br i1 %cmp7.not, label %do.end38, label %do.end33

do.end33:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %parent_irq) #9
  br label %if.end41

do.end38:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %do.end33
  %16 = load i32, ptr @fpga_irq_id, align 4
  %inc42 = add i32 %16, 1
  store i32 %inc42, ptr @fpga_irq_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fpga_irq_mask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fpga_irq_unmask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fpga_irq_handle(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %do.body, label %do.body5.preheader

do.body5.preheader:                               ; preds = %chained_irq_enter.exit
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %domain = getelementptr inbounds %struct.fpga_irq_data, ptr %3, i32 0, i32 3
  br label %do.body5

do.body:                                          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  tail call void @handle_bad_irq(ptr noundef %desc) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %out

do.body5:                                         ; preds = %do.body5.do.body5_crit_edge, %do.body5.preheader
  %status.0 = phi i32 [ %and, %do.body5.do.body5_crit_edge ], [ %15, %do.body5.preheader ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %status.0, i1 true), !range !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %iszero = icmp eq i32 %status.0, 0
  %sub = select i1 %iszero, i32 -1, i32 %16
  %shl = shl nuw i32 1, %sub
  %neg = xor i32 %shl, -1
  %and = and i32 %status.0, %neg
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 4
  %call6 = tail call i32 @generic_handle_domain_irq(ptr noundef %18, i32 noundef %sub) #6
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5.out_crit_edge, label %do.body5.do.body5_crit_edge

do.body5.do.body5_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.body5.out_crit_edge:                           ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %do.body5.out_crit_edge, %do.body
  %19 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i22 = icmp eq ptr %20, null
  br i1 %tobool.not.i22, label %if.else.i23, label %out.chained_irq_exit.exit_crit_edge

out.chained_irq_exit.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i23:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i23, %out.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %22, %if.else.i23 ], [ %20, %out.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fpga_irq_of_init(ptr noundef %node, ptr nocapture readnone %parent) #2 section ".init.text" align 64 {
entry:
  %clear_mask = alloca i32, align 4
  %valid_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clear_mask) #6
  %0 = ptrtoint ptr %clear_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clear_mask, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %valid_mask) #6
  %1 = ptrtoint ptr %valid_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %valid_mask, align 4, !annotation !54
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !55

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 203, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call = tail call ptr @of_iomap(ptr noundef nonnull %node, i32 noundef 0) #6
  %tobool25.not = icmp eq ptr %call, null
  br i1 %tobool25.not, label %do.end43, label %if.end23.if.end49_crit_edge, !prof !55

if.end23.if.end49_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 207, i32 noundef 9, ptr noundef nonnull @.str.12) #6
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end23.if.end49_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.13, ptr noundef nonnull %clear_mask, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool58.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool58.not, label %if.end49.if.end60_crit_edge, label %if.then59

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then59:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %clear_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %clear_mask, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end49.if.end60_crit_edge
  %call.i.i102 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.14, ptr noundef nonnull %valid_mask, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i102)
  %tobool62.not = icmp sgt i32 %call.i.i102, -1
  br i1 %tobool62.not, label %if.end60.do.body65_crit_edge, label %if.then63

if.end60.do.body65_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body65

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %valid_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %valid_mask, align 4
  br label %do.body65

do.body65:                                        ; preds = %if.then63, %if.end60.do.body65_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %clear_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clear_mask, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr = getelementptr i8, ptr %call, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %clear_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clear_mask, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %add.ptr71 = getelementptr i8, ptr %call, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %9) #6, !srcloc !51
  %call72 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %node, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %do.body65.if.end76_crit_edge

do.body65.if.end76_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then74:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = call i32 @set_handle_irq(ptr noundef nonnull @fpga_handle_irq) #9
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %do.body65.if.end76_crit_edge
  %parent_irq.0 = phi i32 [ %call72, %do.body65.if.end76_crit_edge ], [ -1, %if.then74 ]
  %10 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node, align 4
  %12 = ptrtoint ptr %valid_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %valid_mask, align 4
  call void @fpga_irq_init(ptr noundef %call, ptr noundef %11, i32 noundef 0, i32 noundef %parent_irq.0, i32 noundef %13, ptr noundef nonnull %node) #10
  %call77 = call i32 @of_device_is_compatible(ptr noundef nonnull %node, ptr noundef nonnull @.str.15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end76.cleanup_crit_edge, label %do.body80

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %add.ptr83 = getelementptr i8, ptr %call, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 53503) #6, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %do.body80, %if.end76.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %do.body80 ], [ 0, %if.end76.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %valid_mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clear_mask) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fpga_irqdomain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hwirq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %valid = getelementptr inbounds %struct.fpga_irq_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %valid, align 4
  %shl = shl nuw i32 1, %hwirq
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #6
  %chip = getelementptr inbounds %struct.fpga_irq_data, ptr %1, i32 0, i32 1
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef %chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 1024, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 156, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @fpga_irq_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @fpga_irq_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 184, i32 2}
!8 = !{ptr @fpga_irq_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @fpga_irq_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 187, i32 3}
!12 = !{ptr @fpga_irq_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @fpga_irq_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 189, i32 3}
!16 = !{ptr @fpga_irq_init._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @fpga_irq_init._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 207, i32 2}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 209, i32 33}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 212, i32 33}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 232, i32 36}
!26 = !{ptr @__of_table_arm_fpga, !27, !"__of_table_arm_fpga", i1 false, i1 false}
!27 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 237, i32 1}
!28 = !{ptr @__of_table_arm_fpga_sic, !29, !"__of_table_arm_fpga_sic", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 238, i32 1}
!30 = !{ptr @__of_table_ox810se_rps, !31, !"__of_table_ox810se_rps", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 239, i32 1}
!32 = !{ptr @fpga_irq_devices, !33, !"fpga_irq_devices", i1 false, i1 false}
!33 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 51, i32 29}
!34 = !{ptr @fpga_irq_id, !35, !"fpga_irq_id", i1 false, i1 false}
!35 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 52, i32 12}
!36 = !{ptr @fpga_irqdomain_ops, !37, !"fpga_irqdomain_ops", i1 false, i1 false}
!37 = !{!"../drivers/irqchip/irq-versatile-fpga.c", i32 144, i32 36}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 3633888}
!48 = !{i64 2153600401}
!49 = !{i32 0, i32 33}
!50 = !{i64 2153598643}
!51 = !{i64 3633470}
!52 = !{i64 2153599035}
!53 = !{i64 2153599689}
!54 = !{!"auto-init"}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2153609165}
!57 = !{i64 2153609575}
!58 = !{i64 2153609985}
