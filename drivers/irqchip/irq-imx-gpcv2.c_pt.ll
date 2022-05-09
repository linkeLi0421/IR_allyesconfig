; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-imx-gpcv2.c_pt.bc'
source_filename = "../drivers/irqchip/irq-imx-gpcv2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
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
%struct.gpcv2_irqchip_data = type { %struct.raw_spinlock, ptr, [4 x i32], [4 x i32], i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_imx_gpcv2_imx7d = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_gpcv2_irqchip_init }, section "__irqchip_of_table", align 4
@__of_table_imx_gpcv2_imx8mq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_gpcv2_irqchip_init }, section "__irqchip_of_table", align 4
@imx_gpcv2_irqchip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%pOF: no parent, giving up\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx_gpcv2_irqchip_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/irqchip/irq-imx-gpcv2.c\00", [32 x i8] zeroinitializer }, align 32
@imx_gpcv2_irqchip_init._entry_ptr = internal global ptr @imx_gpcv2_irqchip_init._entry, section ".printk_index", align 4
@gpcv2_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@imx_gpcv2_irqchip_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%pOF: unknown compatibility string\0A\00", [58 x i8] zeroinitializer }, align 32
@imx_gpcv2_irqchip_init._entry_ptr.5 = internal global ptr @imx_gpcv2_irqchip_init._entry.3, section ".printk_index", align 4
@imx_gpcv2_irqchip_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%pOF: unable to get parent domain\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_gpcv2_irqchip_init._entry_ptr.8 = internal global ptr @imx_gpcv2_irqchip_init._entry.6, section ".printk_index", align 4
@imx_gpcv2_irqchip_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cd->rlock\00", [21 x i8] zeroinitializer }, align 32
@imx_gpcv2_irqchip_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%pOF: unable to map gpc registers\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_gpcv2_irqchip_init._entry_ptr.12 = internal global ptr @imx_gpcv2_irqchip_init._entry.10, section ".printk_index", align 4
@gpcv2_irqchip_data_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_gpcv2_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @imx_gpcv2_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@imx_gpcv2_instance = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@imx_gpcv2_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @gpcv2_wakeup_source_save, ptr @gpcv2_wakeup_source_restore, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gpcv2_irqchip_data_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_gpcv2_irq_mask, ptr null, ptr @imx_gpcv2_irq_unmask, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @irq_chip_set_type_parent, ptr @imx_gpcv2_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPCv2\00", [26 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 212, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"gpcv2_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 196, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 218, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 226, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 234, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 238, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"gpcv2_irqchip_data_domain_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 190, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"imx_gpcv2_syscore_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 68, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant [24 x i8] c"gpcv2_irqchip_data_chip\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 127, i32 24 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [35 x i8] c"../drivers/irqchip/irq-imx-gpcv2.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 128, i32 12 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__of_table_imx_gpcv2_imx7d, ptr @__of_table_imx_gpcv2_imx8mq, ptr @imx_gpcv2_irqchip_init._entry, ptr @imx_gpcv2_irqchip_init._entry.10, ptr @imx_gpcv2_irqchip_init._entry.3, ptr @imx_gpcv2_irqchip_init._entry.6, ptr @imx_gpcv2_irqchip_init._entry_ptr, ptr @imx_gpcv2_irqchip_init._entry_ptr.12, ptr @imx_gpcv2_irqchip_init._entry_ptr.5, ptr @imx_gpcv2_irqchip_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gpcv2_of_match, ptr @.str.4, ptr @.str.7, ptr @imx_gpcv2_irqchip_init.__key, ptr @.str.9, ptr @.str.11, ptr @gpcv2_irqchip_data_domain_ops, ptr @imx_gpcv2_syscore_ops, ptr @gpcv2_irqchip_data_chip, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpcv2_irqchip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpcv2_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpcv2_irqchip_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpcv2_irqchip_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpcv2_irqchip_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpcv2_irqchip_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpcv2_irqchip_data_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpcv2_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpcv2_irqchip_data_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_gpcv2_irqchip_init(ptr noundef %node, ptr noundef %parent) #0 section ".init.text" align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_match_node(ptr noundef nonnull @gpcv2_of_match, ptr noundef %node) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %node) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call1, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #8
  %3 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 68)
  %5 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

irq_find_host.exit:                               ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #8
  %6 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 68)
  %8 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #8
  %tobool11.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool11.not, label %do.end15, label %irq_find_host.exit.if.end18_crit_edge

irq_find_host.exit.if.end18_crit_edge:            ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end15:                                         ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %node) #11
  br label %cleanup

if.end18:                                         ; preds = %irq_find_host.exit.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %d.0.i87 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end18_crit_edge ], [ %call.i.i.i, %if.end9.if.end18_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 84) #12
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %do.body23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body23:                                        ; preds = %if.end18
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @imx_gpcv2_irqchip_init.__key, i16 noundef signext 2) #8
  %call26 = call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #8
  %gpc_base = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %gpc_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call26, ptr %gpc_base, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %do.end32, label %if.end35

do.end32:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %node) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end35:                                         ; preds = %do.body23
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i87, i32 noundef 0, i32 noundef 128, ptr noundef %spec.select.i.i, ptr noundef nonnull @gpcv2_irqchip_data_domain_ops, ptr noundef nonnull %call7.i.i) #8
  %tobool37.not = icmp eq ptr %call1.i, null
  br i1 %tobool37.not, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %gpc_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpc_base, align 4
  call void @iounmap(ptr noundef %12) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  call void @irq_set_default_host(ptr noundef nonnull %call1.i) #8
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %if.end40
  %i.088 = phi i32 [ 0, %if.end40 ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %13 = ptrtoint ptr %gpc_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpc_base, align 4
  %mul = shl i32 %i.088, 2
  %add.ptr = getelementptr i8, ptr %14, i32 %mul
  %15 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %for.body.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 2, label %for.body.sw.bb44_crit_edge
  ]

for.body.sw.bb44_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb44

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42 = getelementptr i8, ptr %add.ptr, i32 448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 -1) #8, !srcloc !46
  %add.ptr43 = getelementptr i8, ptr %add.ptr, i32 464
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 -1) #8, !srcloc !46
  br label %sw.bb44

sw.bb44:                                          ; preds = %sw.bb, %for.body.sw.bb44_crit_edge
  %add.ptr45 = getelementptr i8, ptr %add.ptr, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 -1) #8, !srcloc !46
  %add.ptr46 = getelementptr i8, ptr %add.ptr, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 -1) #8, !srcloc !46
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb44, %for.body.sw.epilog_crit_edge
  %arrayidx = getelementptr %struct.gpcv2_irqchip_data, ptr %call7.i.i, i32 0, i32 2, i32 %i.088
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %cpu2wakeup = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %cpu2wakeup to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 48, ptr %cpu2wakeup, align 8
  %18 = ptrtoint ptr %gpc_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpc_base, align 4
  %add.ptr49 = getelementptr i8, ptr %19, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 -16777217) #8, !srcloc !46
  store ptr %call7.i.i, ptr @imx_gpcv2_instance, align 4
  call void @register_syscore_ops(ptr noundef nonnull @imx_gpcv2_syscore_ops) #8
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then38, %do.end32, %if.end18.cleanup_crit_edge, %do.end15, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %if.then38 ], [ -12, %do.end32 ], [ -6, %do.end15 ], [ -19, %do.end6 ], [ -19, %do.end ], [ -12, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_default_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_gpcv2_domain_alloc(ptr noundef %domain, i32 noundef %irq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  %cmp.i.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.cleanup_crit_edge, label %is_of_node.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_of_node.exit.i:                                ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, @of_fwnode_ops
  br i1 %cmp.i.i, label %if.then.i, label %is_of_node.exit.i.cleanup_crit_edge

is_of_node.exit.i.cleanup_crit_edge:              ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %is_of_node.exit.i
  %param_count.i = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %param_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %param.i = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not.i = icmp eq i32 %7, 0
  br i1 %cmp2.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %arrayidx6.i = getelementptr %struct.irq_fwspec, ptr %data, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %9)
  %cmp = icmp ugt i32 %9, 127
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp328.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp328.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add i32 %i.029, %irq
  %add4 = add i32 %i.029, %9
  %10 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_data, align 4
  %call5 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %add, i32 noundef %add4, ptr noundef nonnull @gpcv2_irqchip_data_chip, ptr noundef %11) #8
  %inc = add nuw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %12 = call ptr @memcpy(ptr %parent_fwspec, ptr %data, i32 72)
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fwnode, align 4
  %17 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %parent_fwspec, align 4
  %call7 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %irq, i32 noundef %nr_irqs, ptr noundef nonnull %parent_fwspec) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %is_of_node.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %for.end ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %is_of_node.exit.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx_gpcv2_domain_translate(ptr nocapture noundef readnone %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.return_crit_edge, label %is_of_node.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %3, @of_fwnode_ops
  br i1 %cmp.i, label %if.then, label %is_of_node.exit.return_crit_edge

is_of_node.exit.return_crit_edge:                 ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %is_of_node.exit
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %4 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %if.then
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx6 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %hwirq, align 4
  %arrayidx8 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %if.then.return_crit_edge, %is_of_node.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %if.then.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %is_of_node.exit.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_gpcv2_irq_mask(ptr noundef %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %gpc_base.i = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %gpc_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpc_base.i, align 4
  %cpu2wakeup.i = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %cpu2wakeup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu2wakeup.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %8 = lshr i32 %3, 3
  %mul.i = and i32 %8, 536870908
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !47
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwirq, align 4
  %rem = and i32 %12, 31
  %shl = shl nuw i32 1, %rem
  %or = or i32 %shl, %10
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %13) #8, !srcloc !46
  tail call void @_raw_spin_unlock(ptr noundef %1) #8
  tail call void @irq_chip_mask_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_gpcv2_irq_unmask(ptr noundef %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %gpc_base.i = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %gpc_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpc_base.i, align 4
  %cpu2wakeup.i = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %cpu2wakeup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu2wakeup.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %8 = lshr i32 %3, 3
  %mul.i = and i32 %8, 536870908
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !47
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwirq, align 4
  %rem = and i32 %12, 31
  %shl = shl nuw i32 1, %rem
  %neg = xor i32 %shl, -1
  %and = and i32 %10, %neg
  %13 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %13) #8, !srcloc !46
  tail call void @_raw_spin_unlock(ptr noundef %1) #8
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_gpcv2_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div21 = lshr i32 %3, 5
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %rem = and i32 %5, 31
  %shl = shl nuw i32 1, %rem
  %arrayidx = getelementptr %struct.gpcv2_irqchip_data, ptr %1, i32 0, i32 2, i32 %div21
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  %or = or i32 %shl, %7
  %cond = select i1 %tobool.not, i32 %or, i32 %and
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpcv2_wakeup_source_save() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @imx_gpcv2_instance, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gpc_base.i = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 1
  %cpu2wakeup.i = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %gpc_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gpc_base.i, align 4
  %3 = ptrtoint ptr %cpu2wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu2wakeup.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !47
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %arrayidx = getelementptr %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 3, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #8, !srcloc !46
  %11 = ptrtoint ptr %gpc_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpc_base.i, align 4
  %13 = ptrtoint ptr %cpu2wakeup.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu2wakeup.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %12, i32 %14
  %add.ptr1.i.1 = getelementptr i8, ptr %add.ptr.i.1, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.1) #8, !srcloc !47
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %arrayidx.1 = getelementptr %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.1, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.1, i32 %20) #8, !srcloc !46
  %21 = ptrtoint ptr %gpc_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpc_base.i, align 4
  %23 = ptrtoint ptr %cpu2wakeup.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu2wakeup.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %22, i32 %24
  %add.ptr1.i.2 = getelementptr i8, ptr %add.ptr.i.2, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.2) #8, !srcloc !47
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %arrayidx.2 = getelementptr %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx2.2, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.2, i32 %30) #8, !srcloc !46
  %31 = ptrtoint ptr %gpc_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gpc_base.i, align 4
  %33 = ptrtoint ptr %cpu2wakeup.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu2wakeup.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %32, i32 %34
  %add.ptr1.i.3 = getelementptr i8, ptr %add.ptr.i.3, i32 12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.3) #8, !srcloc !47
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %arrayidx.3 = getelementptr %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx2.3, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.3, i32 %40) #8, !srcloc !46
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpcv2_wakeup_source_restore() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @imx_gpcv2_instance, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gpc_base.i = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 1
  %cpu2wakeup.i = getelementptr inbounds %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 4
  %arrayidx = getelementptr %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 3, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %gpc_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpc_base.i, align 4
  %6 = ptrtoint ptr %cpu2wakeup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu2wakeup.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !46
  %arrayidx.1 = getelementptr %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %gpc_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpc_base.i, align 4
  %13 = ptrtoint ptr %cpu2wakeup.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu2wakeup.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %12, i32 %14
  %add.ptr1.i.1 = getelementptr i8, ptr %add.ptr.i.1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.1, i32 %10) #8, !srcloc !46
  %arrayidx.2 = getelementptr %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.2, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %gpc_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpc_base.i, align 4
  %20 = ptrtoint ptr %cpu2wakeup.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu2wakeup.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %19, i32 %21
  %add.ptr1.i.2 = getelementptr i8, ptr %add.ptr.i.2, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.2, i32 %17) #8, !srcloc !46
  %arrayidx.3 = getelementptr %struct.gpcv2_irqchip_data, ptr %0, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %gpc_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpc_base.i, align 4
  %27 = ptrtoint ptr %cpu2wakeup.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu2wakeup.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %26, i32 %28
  %add.ptr1.i.3 = getelementptr i8, ptr %add.ptr.i.3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.3, i32 %24) #8, !srcloc !46
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__of_table_imx_gpcv2_imx7d, !1, !"__of_table_imx_gpcv2_imx7d", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-imx-gpcv2.c", i32 289, i32 1}
!2 = !{ptr @__of_table_imx_gpcv2_imx8mq, !3, !"__of_table_imx_gpcv2_imx8mq", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-imx-gpcv2.c", i32 290, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-imx-gpcv2.c", i32 212, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @imx_gpcv2_irqchip_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @imx_gpcv2_irqchip_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-imx-gpcv2.c", i32 218, i32 3}
!12 = !{ptr @imx_gpcv2_irqchip_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @imx_gpcv2_irqchip_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-imx-gpcv2.c", i32 226, i32 3}
!16 = !{ptr @imx_gpcv2_irqchip_init._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @imx_gpcv2_irqchip_init._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @imx_gpcv2_irqchip_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-imx-gpcv2.c", i32 234, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/irqchip/irq-imx-gpcv2.c", i32 238, i32 3}
!23 = !{ptr @imx_gpcv2_irqchip_init._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @imx_gpcv2_irqchip_init._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @gpcv2_of_match, !26, !"gpcv2_of_match", i1 false, i1 false}
!26 = !{!"../drivers/irqchip/irq-imx-gpcv2.c", i32 196, i32 34}
!27 = !{ptr @gpcv2_irqchip_data_domain_ops, !28, !"gpcv2_irqchip_data_domain_ops", i1 false, i1 false}
!28 = !{!"../drivers/irqchip/irq-imx-gpcv2.c", i32 190, i32 36}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/irqchip/irq-imx-gpcv2.c", i32 128, i32 12}
!31 = !{ptr @gpcv2_irqchip_data_chip, !32, !"gpcv2_irqchip_data_chip", i1 false, i1 false}
!32 = !{!"../drivers/irqchip/irq-imx-gpcv2.c", i32 127, i32 24}
!33 = !{ptr @imx_gpcv2_instance, !34, !"imx_gpcv2_instance", i1 false, i1 false}
!34 = !{!"../drivers/irqchip/irq-imx-gpcv2.c", i32 29, i32 35}
!35 = !{ptr @imx_gpcv2_syscore_ops, !36, !"imx_gpcv2_syscore_ops", i1 false, i1 false}
!36 = !{!"../drivers/irqchip/irq-imx-gpcv2.c", i32 68, i32 27}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 3995094}
!47 = !{i64 3995512}
