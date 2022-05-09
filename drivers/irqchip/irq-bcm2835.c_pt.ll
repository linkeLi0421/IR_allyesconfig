; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-bcm2835.c_pt.bc'
source_filename = "../drivers/irqchip/irq-bcm2835.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.armctrl_ic = type { ptr, [3 x ptr], [3 x ptr], [3 x ptr], ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_bcm2835_armctrl_ic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-armctrl-ic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_armctrl_of_init }, section "__irqchip_of_table", align 4
@__of_table_bcm2836_armctrl_ic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2836-armctrl-ic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2836_armctrl_of_init }, section "__irqchip_of_table", align 4
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%pOF: unable to map IC registers\0A\00", [62 x i8] zeroinitializer }, align 32
@armctrl_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @armctrl_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@intc = internal unnamed_addr global %struct.armctrl_ic zeroinitializer, section ".data..read_mostly", align 4
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%pOF: unable to create IRQ domain\0A\00", [61 x i8] zeroinitializer }, align 32
@reg_pending = internal unnamed_addr constant [3 x i32] [i32 0, i32 4, i32 8], section ".init.rodata", align 4
@reg_enable = internal unnamed_addr constant [3 x i32] [i32 24, i32 16, i32 20], section ".init.rodata", align 4
@reg_disable = internal unnamed_addr constant [3 x i32] [i32 36, i32 28, i32 32], section ".init.rodata", align 4
@bank_irqs = internal unnamed_addr constant [3 x i32] [i32 8, i32 32, i32 32], section ".init.rodata", align 4
@armctrl_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armctrl_mask_irq, ptr null, ptr @armctrl_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@armctrl_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013[Firmware Bug]: Bootloader left irq enabled: bank %d irq %*pbl\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armctrl_of_init\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/irqchip/irq-bcm2835.c\00", [34 x i8] zeroinitializer }, align 32
@armctrl_of_init._entry_ptr = internal global ptr @armctrl_of_init._entry, section ".printk_index", align 4
@armctrl_of_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[Firmware Bug]: Bootloader left fiq enabled\0A\00", [49 x i8] zeroinitializer }, align 32
@armctrl_of_init._entry_ptr.7 = internal global ptr @armctrl_of_init._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%pOF: unable to get parent interrupt.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ARMCTRL-level\00", [18 x i8] zeroinitializer }, align 32
@shortcuts = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 7, i32 9, i32 10, i32 18, i32 19, i32 21, i32 22, i32 23, i32 24, i32 25, i32 30], [52 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 143, i32 9 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"armctrl_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 129, i32 36 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 148, i32 9 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"armctrl_chip\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 102, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 166, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 174, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 181, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 103, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"shortcuts\00", align 1
@___asan_gen_.47 = private constant [33 x i8] c"../drivers/irqchip/irq-bcm2835.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 74, i32 18 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__of_table_bcm2835_armctrl_ic, ptr @__of_table_bcm2836_armctrl_ic, ptr @armctrl_of_init._entry, ptr @armctrl_of_init._entry.5, ptr @armctrl_of_init._entry_ptr, ptr @armctrl_of_init._entry_ptr.7, ptr @.str, ptr @armctrl_ops, ptr @.str.1, ptr @armctrl_chip, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @shortcuts], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armctrl_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armctrl_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armctrl_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armctrl_of_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shortcuts to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_armctrl_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @armctrl_of_init(ptr noundef %node, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2836_armctrl_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @armctrl_of_init(ptr noundef %node, i1 noundef zeroext true) #10
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armctrl_of_init(ptr noundef %node, i1 noundef zeroext %is_2836) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !47
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef %node) #11
  unreachable

if.end:                                           ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 96, i32 noundef 96, i32 noundef 0, ptr noundef nonnull @armctrl_ops, ptr noundef null) #7
  store ptr %call1.i, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 4), align 4
  %tobool2.not = icmp eq ptr %call1.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end.for.body15.lr.ph_crit_edge

if.end.for.body15.lr.ph_crit_edge:                ; preds = %if.end
  br label %for.body15.lr.ph

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, ptr noundef %node) #11
  unreachable

for.body15.lr.ph:                                 ; preds = %for.inc39.for.body15.lr.ph_crit_edge, %if.end.for.body15.lr.ph_crit_edge
  %b.03 = phi i32 [ %inc40, %for.inc39.for.body15.lr.ph_crit_edge ], [ 0, %if.end.for.body15.lr.ph_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr @reg_pending, i32 0, i32 %b.03
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %call, i32 %2
  %arrayidx5 = getelementptr %struct.armctrl_ic, ptr @intc, i32 0, i32 1, i32 %b.03
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr [3 x i32], ptr @reg_enable, i32 0, i32 %b.03
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6, align 4
  %add.ptr7 = getelementptr i8, ptr %call, i32 %5
  %arrayidx8 = getelementptr %struct.armctrl_ic, ptr @intc, i32 0, i32 2, i32 %b.03
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr7, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr [3 x i32], ptr @reg_disable, i32 0, i32 %b.03
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 4
  %add.ptr10 = getelementptr i8, ptr %call, i32 %8
  %arrayidx11 = getelementptr %struct.armctrl_ic, ptr @intc, i32 0, i32 3, i32 %b.03
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr10, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr [3 x i32], ptr @bank_irqs, i32 0, i32 %b.03
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %shl = shl i32 %b.03, 5
  %smax = call i32 @llvm.smax.i32(i32 %11, i32 1)
  br label %for.body15

for.body15:                                       ; preds = %do.end27.for.body15_crit_edge, %for.body15.lr.ph
  %i.02 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc, %do.end27.for.body15_crit_edge ]
  %12 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 4), align 4
  %or = or i32 %i.02, %shl
  %call.i = call i32 @irq_create_mapping_affinity(ptr noundef %12, i32 noundef %or, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp17 = icmp slt i32 %call.i, 1
  br i1 %cmp17, label %do.body21, label %do.end27, !prof !48

do.body21:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-bcm2835.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

do.end27:                                         ; preds = %for.body15
  call void @irq_set_chip_and_handler_name(i32 noundef %call.i, ptr noundef nonnull @armctrl_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  call void @irq_modify_status(i32 noundef %call.i, i32 noundef 1024, i32 noundef 0) #7
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.end, label %do.end27.for.body15_crit_edge

do.end27.for.body15_crit_edge:                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15

for.end:                                          ; preds = %do.end27
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx8, align 4
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !50
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool30.not = icmp eq i32 %15, 0
  br i1 %tobool30.not, label %for.end.for.inc39_crit_edge, label %if.then31

for.end.for.inc39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx11, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %15) #7, !srcloc !51
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %b.03, i32 noundef 32, ptr noundef nonnull %reg) #12
  br label %for.inc39

for.inc39:                                        ; preds = %if.then31, %for.end.for.inc39_crit_edge
  %inc40 = add nuw nsw i32 %b.03, 1
  %exitcond6.not = icmp eq i32 %inc40, 3
  br i1 %exitcond6.not, label %for.end41, label %for.inc39.for.body15.lr.ph_crit_edge

for.inc39.for.body15.lr.ph_crit_edge:             ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15.lr.ph

for.end41:                                        ; preds = %for.inc39
  %add.ptr43 = getelementptr i8, ptr %call, i32 12
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #7, !srcloc !50
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %reg, align 4
  %and = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %for.end41.if.end54_crit_edge, label %if.then47

for.end41.if.end54_crit_edge:                     ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then47:                                        ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 0) #7, !srcloc !51
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %for.end41.if.end54_crit_edge
  br i1 %is_2836, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.end54
  %call57 = call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.8, ptr noundef %node) #11
  unreachable

if.end60:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  call void @__irq_set_handler(i32 noundef %call57, ptr noundef nonnull @bcm2836_chained_handle_irq, i32 noundef 1, ptr noundef null) #7
  br label %if.end62

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %call61 = call i32 @set_handle_irq(ptr noundef nonnull @bcm2835_handle_irq) #12
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.end60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2836_chained_handle_irq(ptr nocapture noundef readnone %desc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1), align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !50
  %2 = and i32 %1, -57600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i10 = icmp eq i32 %2, 0
  br i1 %cmp.i10, label %entry.while.end_crit_edge, label %if.else.i.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.else.i.preheader:                              ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  br label %if.else.i

if.else.i:                                        ; preds = %while.body.if.else.i_crit_edge, %if.else.i.preheader
  %4 = phi i32 [ %21, %while.body.if.else.i_crit_edge ], [ %3, %if.else.i.preheader ]
  %and1.i = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.else4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 @llvm.cttz.i32(i32 %and1.i, i1 true) #7, !range !52
  br label %while.body

if.else4.i:                                       ; preds = %if.else.i
  %and5.i = and i32 %4, 31744
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else10.i, label %if.else4.i.get_next_armctrl_hwirq.exit_crit_edge

if.else4.i.get_next_armctrl_hwirq.exit_crit_edge: ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_next_armctrl_hwirq.exit

if.else10.i:                                      ; preds = %if.else4.i
  %and11.i = and i32 %4, 2064384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else16.i, label %if.else10.i.get_next_armctrl_hwirq.exit_crit_edge

if.else10.i.get_next_armctrl_hwirq.exit_crit_edge: ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_next_armctrl_hwirq.exit

if.else16.i:                                      ; preds = %if.else10.i
  %and17.i = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.else21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.else16.i
  %6 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1, i32 1), align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !50
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %9 = tail call i32 @llvm.cttz.i32(i32 %8, i1 true) #7, !range !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %iszero.i48.i = icmp eq i32 %7, 0
  %.op.i = or i32 %9, 32
  br i1 %iszero.i48.i, label %if.then19.i.while.end_crit_edge, label %if.then19.i.while.body_crit_edge

if.then19.i.while.body_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then19.i.while.end_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.else21.i:                                      ; preds = %if.else16.i
  %and22.i = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %do.body.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.else21.i
  %10 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1, i32 2), align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !50
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %13 = tail call i32 @llvm.cttz.i32(i32 %12, i1 true) #7, !range !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %iszero.i51.i = icmp eq i32 %11, 0
  %.op54.i = or i32 %13, 64
  br i1 %iszero.i51.i, label %if.then24.i.while.end_crit_edge, label %if.then24.i.while.body_crit_edge

if.then24.i.while.body_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then24.i.while.end_crit_edge:                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body.i:                                        ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-bcm2835.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 240, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

get_next_armctrl_hwirq.exit:                      ; preds = %if.else10.i.get_next_armctrl_hwirq.exit_crit_edge, %if.else4.i.get_next_armctrl_hwirq.exit_crit_edge
  %and5.i.sink = phi i32 [ %and5.i, %if.else4.i.get_next_armctrl_hwirq.exit_crit_edge ], [ %and11.i, %if.else10.i.get_next_armctrl_hwirq.exit_crit_edge ]
  %.sink11 = phi i32 [ 32, %if.else4.i.get_next_armctrl_hwirq.exit_crit_edge ], [ 64, %if.else10.i.get_next_armctrl_hwirq.exit_crit_edge ]
  %shr.i.i = lshr exact i32 %and5.i.sink, 10
  %14 = tail call i32 @llvm.cttz.i32(i32 %shr.i.i, i1 true) #7, !range !52
  %arrayidx.i.i = getelementptr [11 x i32], ptr @shortcuts, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %16, %.sink11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i.i)
  %cmp.not = icmp eq i32 %or.i.i, -1
  br i1 %cmp.not, label %get_next_armctrl_hwirq.exit.while.end_crit_edge, label %get_next_armctrl_hwirq.exit.while.body_crit_edge

get_next_armctrl_hwirq.exit.while.body_crit_edge: ; preds = %get_next_armctrl_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

get_next_armctrl_hwirq.exit.while.end_crit_edge:  ; preds = %get_next_armctrl_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %get_next_armctrl_hwirq.exit.while.body_crit_edge, %if.then24.i.while.body_crit_edge, %if.then19.i.while.body_crit_edge, %if.then2.i
  %retval.0.i9 = phi i32 [ %or.i.i, %get_next_armctrl_hwirq.exit.while.body_crit_edge ], [ %.op54.i, %if.then24.i.while.body_crit_edge ], [ %.op.i, %if.then19.i.while.body_crit_edge ], [ %5, %if.then2.i ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 4), align 4
  %call1 = tail call i32 @generic_handle_domain_irq(ptr noundef %17, i32 noundef %retval.0.i9) #7
  %18 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1), align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !50
  %20 = and i32 %19, -57600
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %cmp.i = icmp eq i32 %20, 0
  br i1 %cmp.i, label %while.body.while.end_crit_edge, label %while.body.if.else.i_crit_edge

while.body.if.else.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %get_next_armctrl_hwirq.exit.while.end_crit_edge, %if.then24.i.while.end_crit_edge, %if.then19.i.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_handle_irq(ptr nocapture noundef readnone %regs) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1), align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !50
  %2 = and i32 %1, -57600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i10 = icmp eq i32 %2, 0
  br i1 %cmp.i10, label %entry.while.end_crit_edge, label %if.else.i.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.else.i.preheader:                              ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  br label %if.else.i

if.else.i:                                        ; preds = %while.body.if.else.i_crit_edge, %if.else.i.preheader
  %4 = phi i32 [ %21, %while.body.if.else.i_crit_edge ], [ %3, %if.else.i.preheader ]
  %and1.i = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.else4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 @llvm.cttz.i32(i32 %and1.i, i1 true) #7, !range !52
  br label %while.body

if.else4.i:                                       ; preds = %if.else.i
  %and5.i = and i32 %4, 31744
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else10.i, label %if.else4.i.get_next_armctrl_hwirq.exit_crit_edge

if.else4.i.get_next_armctrl_hwirq.exit_crit_edge: ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_next_armctrl_hwirq.exit

if.else10.i:                                      ; preds = %if.else4.i
  %and11.i = and i32 %4, 2064384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else16.i, label %if.else10.i.get_next_armctrl_hwirq.exit_crit_edge

if.else10.i.get_next_armctrl_hwirq.exit_crit_edge: ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_next_armctrl_hwirq.exit

if.else16.i:                                      ; preds = %if.else10.i
  %and17.i = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.else21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.else16.i
  %6 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1, i32 1), align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !50
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %9 = tail call i32 @llvm.cttz.i32(i32 %8, i1 true) #7, !range !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %iszero.i48.i = icmp eq i32 %7, 0
  %.op.i = or i32 %9, 32
  br i1 %iszero.i48.i, label %if.then19.i.while.end_crit_edge, label %if.then19.i.while.body_crit_edge

if.then19.i.while.body_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then19.i.while.end_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.else21.i:                                      ; preds = %if.else16.i
  %and22.i = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %do.body.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.else21.i
  %10 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1, i32 2), align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !50
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %13 = tail call i32 @llvm.cttz.i32(i32 %12, i1 true) #7, !range !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %iszero.i51.i = icmp eq i32 %11, 0
  %.op54.i = or i32 %13, 64
  br i1 %iszero.i51.i, label %if.then24.i.while.end_crit_edge, label %if.then24.i.while.body_crit_edge

if.then24.i.while.body_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then24.i.while.end_crit_edge:                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body.i:                                        ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-bcm2835.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 240, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

get_next_armctrl_hwirq.exit:                      ; preds = %if.else10.i.get_next_armctrl_hwirq.exit_crit_edge, %if.else4.i.get_next_armctrl_hwirq.exit_crit_edge
  %and5.i.sink = phi i32 [ %and5.i, %if.else4.i.get_next_armctrl_hwirq.exit_crit_edge ], [ %and11.i, %if.else10.i.get_next_armctrl_hwirq.exit_crit_edge ]
  %.sink11 = phi i32 [ 32, %if.else4.i.get_next_armctrl_hwirq.exit_crit_edge ], [ 64, %if.else10.i.get_next_armctrl_hwirq.exit_crit_edge ]
  %shr.i.i = lshr exact i32 %and5.i.sink, 10
  %14 = tail call i32 @llvm.cttz.i32(i32 %shr.i.i, i1 true) #7, !range !52
  %arrayidx.i.i = getelementptr [11 x i32], ptr @shortcuts, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %16, %.sink11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i.i)
  %cmp.not = icmp eq i32 %or.i.i, -1
  br i1 %cmp.not, label %get_next_armctrl_hwirq.exit.while.end_crit_edge, label %get_next_armctrl_hwirq.exit.while.body_crit_edge

get_next_armctrl_hwirq.exit.while.body_crit_edge: ; preds = %get_next_armctrl_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

get_next_armctrl_hwirq.exit.while.end_crit_edge:  ; preds = %get_next_armctrl_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %get_next_armctrl_hwirq.exit.while.body_crit_edge, %if.then24.i.while.body_crit_edge, %if.then19.i.while.body_crit_edge, %if.then2.i
  %retval.0.i9 = phi i32 [ %or.i.i, %get_next_armctrl_hwirq.exit.while.body_crit_edge ], [ %.op54.i, %if.then24.i.while.body_crit_edge ], [ %.op.i, %if.then19.i.while.body_crit_edge ], [ %5, %if.then2.i ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 4), align 4
  %call1 = tail call i32 @generic_handle_domain_irq(ptr noundef %17, i32 noundef %retval.0.i9) #7
  %18 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1), align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !50
  %20 = and i32 %19, -57600
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %cmp.i = icmp eq i32 %20, 0
  br i1 %cmp.i, label %while.body.while.end_crit_edge, label %while.body.if.else.i_crit_edge

while.body.if.else.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %get_next_armctrl_hwirq.exit.while.end_crit_edge, %if.then24.i.while.end_crit_edge, %if.then19.i.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armctrl_xlate(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %ctrlr, ptr nocapture noundef readonly %intspec, i32 noundef %intsize, ptr nocapture noundef writeonly %out_hwirq, ptr nocapture noundef writeonly %out_type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %intsize)
  %cmp.not = icmp eq i32 %intsize, 2
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !54

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 112, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end21:                                         ; preds = %entry
  %0 = ptrtoint ptr %intspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intspec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp23 = icmp ugt i32 %1, 2
  br i1 %cmp23, label %do.end39, label %if.end55, !prof !48

do.end39:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 115, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end55:                                         ; preds = %if.end21
  %arrayidx57 = getelementptr i32, ptr %intspec, i32 1
  %2 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %3)
  %cmp58 = icmp ugt i32 %3, 31
  br i1 %cmp58, label %do.end74, label %if.end90, !prof !48

do.end74:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end90:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp93 = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp95 = icmp ugt i32 %3, 7
  %or.cond = select i1 %cmp93, i1 %cmp95, i1 false
  br i1 %or.cond, label %do.end111, label %if.end127, !prof !55

do.end111:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 121, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end127:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 %1, 5
  %or = or i32 %3, %shl
  %4 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %out_hwirq, align 4
  %5 = ptrtoint ptr %out_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %out_type, align 4
  br label %return

return:                                           ; preds = %if.end127, %do.end111, %do.end74, %do.end39, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end39 ], [ -22, %do.end74 ], [ -22, %do.end111 ], [ 0, %if.end127 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armctrl_mask_irq(ptr nocapture noundef readonly %d) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %and = and i32 %1, 31
  %shl = shl nuw i32 1, %and
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %shr = lshr i32 %1, 5
  %arrayidx = getelementptr %struct.armctrl_ic, ptr @intc, i32 0, i32 3, i32 %shr
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #7, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armctrl_unmask_irq(ptr nocapture noundef readonly %d) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %and = and i32 %1, 31
  %shl = shl nuw i32 1, %and
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %shr = lshr i32 %1, 5
  %arrayidx = getelementptr %struct.armctrl_ic, ptr @intc, i32 0, i32 2, i32 %shr
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #7, !srcloc !51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__of_table_bcm2835_armctrl_ic, !1, !"__of_table_bcm2835_armctrl_ic", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 260, i32 1}
!2 = !{ptr @__of_table_bcm2836_armctrl_ic, !3, !"__of_table_bcm2836_armctrl_ic", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 262, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 143, i32 9}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 148, i32 9}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 166, i32 4}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @armctrl_of_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @armctrl_of_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 174, i32 3}
!16 = !{ptr @armctrl_of_init._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @armctrl_of_init._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 181, i32 10}
!20 = !{ptr @armctrl_ops, !21, !"armctrl_ops", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 129, i32 36}
!22 = !{ptr @intc, !23, !"intc", i1 false, i1 false}
!23 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 87, i32 26}
!24 = !{ptr @reg_pending, !25, !"reg_pending", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 69, i32 18}
!26 = !{ptr @reg_enable, !27, !"reg_enable", i1 false, i1 false}
!27 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 70, i32 18}
!28 = !{ptr @reg_disable, !29, !"reg_disable", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 71, i32 18}
!30 = !{ptr @bank_irqs, !31, !"bank_irqs", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 72, i32 18}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 103, i32 10}
!34 = !{ptr @armctrl_chip, !35, !"armctrl_chip", i1 false, i1 false}
!35 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 102, i32 24}
!36 = !{ptr @shortcuts, !37, !"shortcuts", i1 false, i1 false}
!37 = !{!"../drivers/irqchip/irq-bcm2835.c", i32 74, i32 18}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 2153601460, i64 2153601954, i64 2153601497, i64 2153601553, i64 2153601587, i64 2153601611, i64 2153601652, i64 2153601673, i64 2153601701, i64 2153601735}
!50 = !{i64 691076}
!51 = !{i64 690658}
!52 = !{i32 0, i32 33}
!53 = !{i64 2153609561, i64 2153610055, i64 2153609598, i64 2153609654, i64 2153609688, i64 2153609712, i64 2153609753, i64 2153609774, i64 2153609802, i64 2153609836}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!"branch_weights", i32 1, i32 4001}
