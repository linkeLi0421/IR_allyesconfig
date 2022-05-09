; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-dw-apb-ictl.c_pt.bc'
source_filename = "../drivers/irqchip/irq-dw-apb-ictl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__of_table_dw_apb_ictl = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-apb-ictl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_apb_ictl_init }, section "__irqchip_of_table", align 4
@dw_apb_ictl_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_apb_ictl_irq_domain_alloc, ptr @irq_domain_free_irqs_top, ptr null, ptr null, ptr @irq_domain_translate_onecell, ptr null }, [52 x i8] zeroinitializer }, align 32
@dw_apb_ictl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%pOF: unable to parse irq\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw_apb_ictl_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/irqchip/irq-dw-apb-ictl.c\00", [62 x i8] zeroinitializer }, align 32
@dw_apb_ictl_init._entry_ptr = internal global ptr @dw_apb_ictl_init._entry, section ".printk_index", align 4
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@dw_apb_ictl_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%pOF: unable to get resource\0A\00", [32 x i8] zeroinitializer }, align 32
@dw_apb_ictl_init._entry_ptr.5 = internal global ptr @dw_apb_ictl_init._entry.3, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@dw_apb_ictl_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%pOF: unable to request mem region\0A\00", [58 x i8] zeroinitializer }, align 32
@dw_apb_ictl_init._entry_ptr.8 = internal global ptr @dw_apb_ictl_init._entry.6, section ".printk_index", align 4
@dw_apb_ictl_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%pOF: unable to map resource\0A\00", [32 x i8] zeroinitializer }, align 32
@dw_apb_ictl_init._entry_ptr.11 = internal global ptr @dw_apb_ictl_init._entry.9, section ".printk_index", align 4
@dw_apb_ictl_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%pOF: unable to add irq domain\0A\00", [62 x i8] zeroinitializer }, align 32
@dw_apb_ictl_init._entry_ptr.14 = internal global ptr @dw_apb_ictl_init._entry.12, section ".printk_index", align 4
@dw_apb_ictl_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%pOF: unable to alloc irq domain gc\0A\00", [57 x i8] zeroinitializer }, align 32
@dw_apb_ictl_init._entry_ptr.17 = internal global ptr @dw_apb_ictl_init._entry.15, section ".printk_index", align 4
@dw_apb_ictl_irq_domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"dw_apb_ictl_irq_domain_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 92, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 133, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 141, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 146, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 152, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 178, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 187, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [23 x i8] c"dw_apb_ictl_irq_domain\00", align 1
@___asan_gen_.64 = private constant [37 x i8] c"../drivers/irqchip/irq-dw-apb-ictl.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 31, i32 27 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__of_table_dw_apb_ictl, ptr @dw_apb_ictl_init._entry, ptr @dw_apb_ictl_init._entry.12, ptr @dw_apb_ictl_init._entry.15, ptr @dw_apb_ictl_init._entry.3, ptr @dw_apb_ictl_init._entry.6, ptr @dw_apb_ictl_init._entry.9, ptr @dw_apb_ictl_init._entry_ptr, ptr @dw_apb_ictl_init._entry_ptr.11, ptr @dw_apb_ictl_init._entry_ptr.14, ptr @dw_apb_ictl_init._entry_ptr.17, ptr @dw_apb_ictl_init._entry_ptr.5, ptr @dw_apb_ictl_init._entry_ptr.8, ptr @dw_apb_ictl_irq_domain_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @dw_apb_ictl_irq_domain], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_apb_ictl_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_apb_ictl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_apb_ictl_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_apb_ictl_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_apb_ictl_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_apb_ictl_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_apb_ictl_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_apb_ictl_irq_domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_apb_ictl_init(ptr noundef %np, ptr noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  %r = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #6
  %0 = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 1
  %tobool.not = icmp eq ptr %parent, null
  %1 = call ptr @memset(ptr %r, i32 255, i32 32)
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.else

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.else:                                          ; preds = %entry
  %call = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %do.end, label %if.else.if.end3_crit_edge

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %np) #9
  br label %cleanup

if.end3:                                          ; preds = %if.else.if.end3_crit_edge, %entry.if.end3_crit_edge
  %parent_irq.0 = phi i32 [ 0, %entry.if.end3_crit_edge ], [ %call, %if.else.if.end3_crit_edge ]
  %domain_ops.0 = phi ptr [ @dw_apb_ictl_irq_domain_ops, %entry.if.end3_crit_edge ], [ @irq_generic_chip_ops, %if.else.if.end3_crit_edge ]
  %call4 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %r) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %np) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %0, align 4
  %sub.i148 = sub i32 1, %3
  %add.i = add i32 %sub.i148, %5
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %6 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %full_name, align 4
  %call14 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %add.i, ptr noundef %7, i32 noundef 0) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %np) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %8 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %r, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %0, align 4
  %sub.i150 = sub i32 1, %9
  %add.i151 = add i32 %sub.i150, %11
  %call25 = call ptr @ioremap(i32 noundef %9, i32 noundef %add.i151) #6
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %np) #9
  br label %err_release

if.end33:                                         ; preds = %if.end22
  %add.ptr = getelementptr i8, ptr %call25, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !41
  %add.ptr34 = getelementptr i8, ptr %call25, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 -1) #6, !srcloc !41
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call25, i32 -1) #6, !srcloc !41
  %add.ptr36 = getelementptr i8, ptr %call25, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 -1) #6, !srcloc !41
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #6, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool40.not = icmp eq i32 %12, 0
  br i1 %tobool40.not, label %if.else43, label %if.then41

if.then41:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %14 = call i32 @llvm.ctlz.i32(i32 %13, i1 true) #6, !range !43
  %add = sub nuw nsw i32 64, %14
  br label %if.end49

if.else43:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call25) #6, !srcloc !42
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i145 = icmp eq i32 %15, 0
  %17 = call i32 @llvm.ctlz.i32(i32 %16, i1 true) #6, !range !43
  %sub.i146 = sub nuw nsw i32 32, %17
  %cond.i147 = select i1 %tobool.not.i145, i32 0, i32 %sub.i146
  br label %if.end49

if.end49:                                         ; preds = %if.else43, %if.then41
  %nrirqs.0 = phi i32 [ %add, %if.then41 ], [ %cond.i147, %if.else43 ]
  %tobool.not.i.i = icmp eq ptr %np, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %nrirqs.0, i32 noundef %nrirqs.0, i32 noundef 0, ptr noundef nonnull %domain_ops.0, ptr noundef null) #6
  %tobool51.not = icmp eq ptr %call1.i, null
  br i1 %tobool51.not, label %if.end49.err_unmap_crit_edge, label %do.end64

if.end49.err_unmap_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap

do.end64:                                         ; preds = %if.end49
  %18 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %np, align 4
  %call66 = call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %call1.i, i32 noundef 32, i32 noundef 1, ptr noundef %19, ptr noundef nonnull @handle_level_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %for.cond.preheader, label %do.end64.err_unmap_crit_edge

do.end64.err_unmap_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap

for.cond.preheader:                               ; preds = %do.end64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nrirqs.0)
  %cmp76157.not = icmp eq i32 %nrirqs.0, 0
  br i1 %cmp76157.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %div159.lhs.trunc = add nsw i32 %nrirqs.0, 31
  %div159160161 = lshr i32 %div159.lhs.trunc, 5
  %div159.zext = and i32 %div159160161, 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0158 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.0158, 5
  %call77 = call ptr @irq_get_domain_generic_chip(ptr noundef nonnull %call1.i, i32 noundef %mul) #6
  %mul78 = shl i32 %i.0158, 2
  %add.ptr79 = getelementptr i8, ptr %call25, i32 %mul78
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call77, i32 0, i32 1
  %20 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr79, ptr %reg_base, align 4
  %regs = getelementptr inbounds %struct.irq_chip_generic, ptr %call77, i32 2, i32 0, i32 4
  %mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call77, i32 2, i32 0, i32 4, i32 1, i32 1
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %mask, align 4
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %regs, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call77, i32 1, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @irq_gc_mask_set_bit, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call77, i32 1, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_unmask, align 4
  %irq_resume = getelementptr inbounds %struct.irq_chip_generic, ptr %call77, i32 1, i32 8
  %25 = ptrtoint ptr %irq_resume to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dw_apb_ictl_resume, ptr %irq_resume, align 4
  %inc = add nuw nsw i32 %i.0158, 1
  %exitcond.not = icmp eq i32 %inc, %div159.zext
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_irq.0)
  %tobool91.not = icmp eq i32 %parent_irq.0, 0
  br i1 %tobool91.not, label %if.else93, label %if.then92

if.then92:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_set_chained_handler_and_data(i32 noundef %parent_irq.0, ptr noundef nonnull @dw_apb_ictl_handle_irq_cascaded, ptr noundef nonnull %call1.i) #6
  br label %cleanup

if.else93:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call1.i, ptr @dw_apb_ictl_irq_domain, align 4
  %call94 = call i32 @set_handle_irq(ptr noundef nonnull @dw_apb_ictl_handle_irq) #9
  br label %cleanup

err_unmap:                                        ; preds = %do.end64.err_unmap_crit_edge, %if.end49.err_unmap_crit_edge
  %.str.16.sink = phi ptr [ @.str.13, %if.end49.err_unmap_crit_edge ], [ @.str.16, %do.end64.err_unmap_crit_edge ]
  %ret.0 = phi i32 [ -12, %if.end49.err_unmap_crit_edge ], [ %call66, %do.end64.err_unmap_crit_edge ]
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16.sink, ptr noundef %np) #9
  call void @iounmap(ptr noundef nonnull %call25) #6
  br label %err_release

err_release:                                      ; preds = %err_unmap, %do.end30
  %ret.1 = phi i32 [ %ret.0, %err_unmap ], [ -12, %do.end30 ]
  %26 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %r, align 4
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %0, align 4
  %sub.i153 = sub i32 1, %27
  %add.i154 = add i32 %sub.i153, %29
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %27, i32 noundef %add.i154) #6
  br label %cleanup

cleanup:                                          ; preds = %err_release, %if.else93, %if.then92, %do.end19, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call4, %do.end9 ], [ %ret.1, %err_release ], [ -12, %do.end19 ], [ 0, %if.else93 ], [ 0, %if.then92 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_apb_ictl_resume(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #6
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %regs = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !41
  %mask_cache = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mask_cache, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base, align 4
  %mask = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %add.ptr4 = getelementptr i8, ptr %14, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %12) #6, !srcloc !41
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_apb_ictl_handle_irq_cascaded(ptr noundef %desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
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
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
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
  %revmap_size = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %revmap_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %revmap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp24.not = icmp eq i32 %13, 0
  br i1 %cmp24.not, label %chained_irq_enter.exit.for.end_crit_edge, label %chained_irq_enter.exit.for.body_crit_edge

chained_irq_enter.exit.for.body_crit_edge:        ; preds = %chained_irq_enter.exit
  br label %for.body

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %while.end.for.body_crit_edge, %chained_irq_enter.exit.for.body_crit_edge
  %n.025 = phi i32 [ %add5, %while.end.for.body_crit_edge ], [ 0, %chained_irq_enter.exit.for.body_crit_edge ]
  %call2 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %1, i32 noundef %n.025) #6
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call2, i32 0, i32 1
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not22 = icmp eq i32 %16, 0
  br i1 %tobool.not22, label %for.body.while.end_crit_edge, label %while.body.lr.ph

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.body
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %irq_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call2, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %stat.023 = phi i32 [ %17, %while.body.lr.ph ], [ %and, %while.body.while.body_crit_edge ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %stat.023, i1 true), !range !43
  %19 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq_base, align 4
  %add = add i32 %20, %18
  %call4 = tail call i32 @generic_handle_domain_irq(ptr noundef %1, i32 noundef %add) #6
  %shl = shl nuw i32 1, %18
  %neg = xor i32 %shl, -1
  %and = and i32 %stat.023, %neg
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  %add5 = add i32 %n.025, 32
  %21 = ptrtoint ptr %revmap_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %revmap_size, align 4
  %cmp = icmp ult i32 %add5, %22
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %23 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i19 = icmp eq ptr %24, null
  br i1 %tobool.not.i19, label %if.else.i20, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i20:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %25 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i20, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %26, %if.else.i20 ], [ %24, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_apb_ictl_handle_irq(ptr nocapture noundef readnone %regs) #5 section ".irqentry.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dw_apb_ictl_irq_domain, align 4
  %revmap_size = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %revmap_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %revmap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp12.not = icmp eq i32 %2, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %while.end.for.body_crit_edge, %entry.for.body_crit_edge
  %n.013 = phi i32 [ %add, %while.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call ptr @irq_get_domain_generic_chip(ptr noundef %0, i32 noundef %n.013) #6
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 48
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not10 = icmp eq i32 %5, 0
  br i1 %tobool.not10, label %for.body.while.end_crit_edge, label %while.body.preheader

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.preheader:                             ; preds = %for.body
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %stat.011 = phi i32 [ %and, %while.body.while.body_crit_edge ], [ %6, %while.body.preheader ]
  %7 = tail call i32 @llvm.cttz.i32(i32 %stat.011, i1 true), !range !43
  %call2 = tail call i32 @generic_handle_domain_irq(ptr noundef %0, i32 noundef %7) #6
  %shl = shl nuw i32 1, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %stat.011, %neg
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  %add = add i32 %n.013, 32
  %8 = ptrtoint ptr %revmap_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %revmap_size, align 4
  %cmp = icmp ult i32 %add, %9
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_apb_ictl_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef %arg) #5 align 64 {
entry:
  %hwirq = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwirq) #6
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hwirq, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #6
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %call = call i32 @irq_domain_translate_onecell(ptr noundef %domain, ptr noundef %arg, ptr noundef nonnull %hwirq, ptr noundef nonnull %type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp12.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp12.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %i.013, %virq
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %add1 = add i32 %3, %i.013
  %call2 = call i32 @irq_map_generic_chip(ptr noundef %domain, i32 noundef %add, i32 noundef %add1) #6
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwirq) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_top(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_translate_onecell(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_map_generic_chip(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__of_table_dw_apb_ictl, !1, !"__of_table_dw_apb_ictl", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-dw-apb-ictl.c", i32 217, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-dw-apb-ictl.c", i32 133, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dw_apb_ictl_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @dw_apb_ictl_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-dw-apb-ictl.c", i32 141, i32 3}
!10 = !{ptr @dw_apb_ictl_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dw_apb_ictl_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-dw-apb-ictl.c", i32 146, i32 3}
!14 = !{ptr @dw_apb_ictl_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @dw_apb_ictl_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-dw-apb-ictl.c", i32 152, i32 3}
!18 = !{ptr @dw_apb_ictl_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @dw_apb_ictl_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-dw-apb-ictl.c", i32 178, i32 3}
!22 = !{ptr @dw_apb_ictl_init._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dw_apb_ictl_init._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-dw-apb-ictl.c", i32 187, i32 3}
!26 = !{ptr @dw_apb_ictl_init._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dw_apb_ictl_init._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @dw_apb_ictl_irq_domain_ops, !29, !"dw_apb_ictl_irq_domain_ops", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-dw-apb-ictl.c", i32 92, i32 36}
!30 = !{ptr @dw_apb_ictl_irq_domain, !31, !"dw_apb_ictl_irq_domain", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-dw-apb-ictl.c", i32 31, i32 27}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 689072}
!42 = !{i64 689490}
!43 = !{i32 0, i32 33}
!44 = !{!"auto-init"}
