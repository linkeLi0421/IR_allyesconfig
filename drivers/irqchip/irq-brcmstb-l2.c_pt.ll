; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-brcmstb-l2.c_pt.bc'
source_filename = "../drivers/irqchip/irq-brcmstb-l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.brcmstb_intc_init_params = type { ptr, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmstb_l2_intc_data = type { ptr, ptr, i32, i32, i8, i32 }
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
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__initcall__kmod_irq_brcmstb_l2__188_290_brcmstb_l2_driver_init6 = internal global ptr @brcmstb_l2_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description189 = internal constant [72 x i8] c"irq_brcmstb_l2.description=Broadcom STB generic L2 interrupt controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [51 x i8] c"irq_brcmstb_l2.file=drivers/irqchip/irq-brcmstb-l2\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [30 x i8] c"irq_brcmstb_l2.license=GPL v2\00", section ".modinfo", align 1
@brcmstb_l2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @platform_irqchip_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @brcmstb_l2_irqchip_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"brcmstb_l2\00", [21 x i8] zeroinitializer }, align 32
@brcmstb_l2_irqchip_match_table = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,l2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_l2_edge_intc_of_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,hif-spi-l2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_l2_edge_intc_of_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,upg-aux-aon-l2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_l2_edge_intc_of_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7271-l2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_l2_lvl_intc_of_init }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@l2_edge_intc_init = internal constant { %struct.brcmstb_intc_init_params, [40 x i8] } { %struct.brcmstb_intc_init_params { ptr @handle_edge_irq, i32 0, i32 8, i32 12, i32 16, i32 20 }, [40 x i8] zeroinitializer }, align 32
@brcmstb_l2_intc_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013irq_brcmstb_l2: failed to remap intc L2 registers\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcmstb_l2_intc_of_init\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/irqchip/irq-brcmstb-l2.c\00", [63 x i8] zeroinitializer }, align 32
@brcmstb_l2_intc_of_init._entry_ptr = internal global ptr @brcmstb_l2_intc_of_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm,irq-can-wake\00", [46 x i8] zeroinitializer }, align 32
@brcmstb_l2_intc_of_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013irq_brcmstb_l2: failed to find parent interrupt\0A\00", [45 x i8] zeroinitializer }, align 32
@brcmstb_l2_intc_of_init._entry_ptr.7 = internal global ptr @brcmstb_l2_intc_of_init._entry.5, section ".printk_index", align 4
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@brcmstb_l2_intc_of_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013irq_brcmstb_l2: failed to allocate generic irq chip\0A\00", [41 x i8] zeroinitializer }, align 32
@brcmstb_l2_intc_of_init._entry_ptr.10 = internal global ptr @brcmstb_l2_intc_of_init._entry.8, section ".printk_index", align 4
@brcmstb_l2_intc_of_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016irq_brcmstb_l2: registered L2 intc (%pOF, parent irq: %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@brcmstb_l2_intc_of_init._entry_ptr.13 = internal global ptr @brcmstb_l2_intc_of_init._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@l2_lvl_intc_init = internal constant { %struct.brcmstb_intc_init_params, [40 x i8] } { %struct.brcmstb_intc_init_params { ptr @handle_level_irq, i32 0, i32 -1, i32 4, i32 8, i32 12 }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"brcmstb_l2_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 290, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [31 x i8] c"brcmstb_l2_irqchip_match_table\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 285, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"l2_edge_intc_init\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 36, i32 46 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 177, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 186, i32 45 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 192, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 215, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 260, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"l2_lvl_intc_init\00", align 1
@___asan_gen_.60 = private constant [36 x i8] c"../drivers/irqchip/irq-brcmstb-l2.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 46, i32 46 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__initcall__kmod_irq_brcmstb_l2__188_290_brcmstb_l2_driver_init6, ptr @brcmstb_l2_intc_of_init._entry, ptr @brcmstb_l2_intc_of_init._entry.11, ptr @brcmstb_l2_intc_of_init._entry.5, ptr @brcmstb_l2_intc_of_init._entry.8, ptr @brcmstb_l2_intc_of_init._entry_ptr, ptr @brcmstb_l2_intc_of_init._entry_ptr.10, ptr @brcmstb_l2_intc_of_init._entry_ptr.13, ptr @brcmstb_l2_intc_of_init._entry_ptr.7, ptr @brcmstb_l2_driver, ptr @.str, ptr @brcmstb_l2_irqchip_match_table, ptr @l2_edge_intc_init, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @l2_lvl_intc_init], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_l2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_l2_irqchip_match_table to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_edge_intc_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_l2_intc_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_l2_intc_of_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_l2_intc_of_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_l2_intc_of_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_lvl_intc_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_l2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmstb_l2_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irqchip_probe(ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_l2_edge_intc_of_init(ptr noundef %np, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @brcmstb_l2_intc_of_init(ptr noundef %np, ptr noundef nonnull @l2_edge_intc_init) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_l2_lvl_intc_of_init(ptr noundef %np, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @brcmstb_l2_intc_of_init(ptr noundef %np, ptr noundef nonnull @l2_lvl_intc_init) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmstb_l2_intc_of_init(ptr noundef %np, ptr nocapture noundef readonly %init_params) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %do.body6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %out_free

do.body6:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %cpu_mask_set = getelementptr inbounds %struct.brcmstb_intc_init_params, ptr %init_params, i32 0, i32 4
  %1 = ptrtoint ptr %cpu_mask_set to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpu_mask_set, align 4
  %add.ptr = getelementptr i8, ptr %call1, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !45
  %call.i = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i, null
  %can_wake = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %call7.i.i, i32 0, i32 4
  %frombool = zext i1 %tobool.i to i8
  %3 = ptrtoint ptr %can_wake to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %can_wake, align 8
  br i1 %tobool.i, label %do.body6.if.end18_crit_edge, label %land.lhs.true

do.body6.if.end18_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %do.body6
  %cpu_clear = getelementptr inbounds %struct.brcmstb_intc_init_params, ptr %init_params, i32 0, i32 2
  %4 = ptrtoint ptr %cpu_clear to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu_clear, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  br i1 %cmp, label %do.body13, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.body13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %cpu_clear to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu_clear, align 4
  %add.ptr17 = getelementptr i8, ptr %call1, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 -1) #6, !srcloc !45
  br label %if.end18

if.end18:                                         ; preds = %do.body13, %land.lhs.true.if.end18_crit_edge, %do.body6.if.end18_crit_edge
  %call19 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %out_unmap

if.end27:                                         ; preds = %if.end18
  %tobool.not.i.i = icmp eq ptr %np, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #6
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i, ptr %call7.i.i, align 8
  %tobool30.not = icmp eq ptr %call1.i, null
  br i1 %tobool30.not, label %if.end27.out_unmap_crit_edge, label %if.end32

if.end27.out_unmap_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unmap

if.end32:                                         ; preds = %if.end27
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %9 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %full_name, align 4
  %11 = ptrtoint ptr %init_params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_params, align 4
  %call41 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %call1.i, i32 noundef 32, i32 noundef 1, ptr noundef %10, ptr noundef %12, i32 noundef 7168, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end49, label %do.end46

do.end46:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  tail call void @irq_domain_remove(ptr noundef %14) #6
  br label %out_unmap

if.end49:                                         ; preds = %if.end32
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call19, ptr noundef nonnull @brcmstb_l2_intc_irq_handle, ptr noundef nonnull %call7.i.i) #6
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %call51 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %16, i32 noundef 0) #6
  %gc = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call51, ptr %gc, align 4
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call51, i32 0, i32 1
  %18 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call1, ptr %reg_base, align 4
  %19 = load ptr, ptr %gc, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %private, align 4
  %cpu_status = getelementptr inbounds %struct.brcmstb_intc_init_params, ptr %init_params, i32 0, i32 1
  %21 = ptrtoint ptr %cpu_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu_status, align 4
  %status_offset = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %status_offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %status_offset, align 8
  %cpu_mask_status = getelementptr inbounds %struct.brcmstb_intc_init_params, ptr %init_params, i32 0, i32 3
  %24 = ptrtoint ptr %cpu_mask_status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu_mask_status, align 4
  %mask_offset = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %mask_offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mask_offset, align 4
  %27 = load ptr, ptr %gc, align 4
  %cpu_clear55 = getelementptr inbounds %struct.brcmstb_intc_init_params, ptr %init_params, i32 0, i32 2
  %28 = ptrtoint ptr %cpu_clear55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu_clear55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp56 = icmp sgt i32 %29, -1
  br i1 %cmp56, label %if.then57, label %if.end49.if.end62_crit_edge

if.end49.if.end62_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then57:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %ack = getelementptr inbounds %struct.irq_chip_generic, ptr %27, i32 2, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ack, align 4
  %irq_ack = getelementptr inbounds %struct.irq_chip_generic, ptr %27, i32 1, i32 0, i32 4, i32 1, i32 1
  %31 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @irq_gc_ack_set_bit, ptr %irq_ack, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.end49.if.end62_crit_edge
  %irq_gc_mask_disable_reg.sink = phi ptr [ @brcmstb_l2_mask_and_ack, %if.then57 ], [ @irq_gc_mask_disable_reg, %if.end49.if.end62_crit_edge ]
  %32 = getelementptr inbounds %struct.irq_chip_generic, ptr %27, i32 1, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %irq_gc_mask_disable_reg.sink, ptr %32, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %27, i32 1, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @irq_gc_mask_disable_reg, ptr %irq_mask, align 4
  %35 = ptrtoint ptr %cpu_mask_set to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu_mask_set, align 4
  %regs65 = getelementptr inbounds %struct.irq_chip_generic, ptr %27, i32 2, i32 0, i32 4
  %disable = getelementptr inbounds %struct.irq_chip_generic, ptr %27, i32 2, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %disable, align 4
  %38 = ptrtoint ptr %cpu_mask_status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu_mask_status, align 4
  %mask = getelementptr inbounds %struct.irq_chip_generic, ptr %27, i32 2, i32 0, i32 4, i32 1, i32 1
  %40 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %27, i32 1, i32 0, i32 4, i32 6
  %41 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @irq_gc_unmask_enable_reg, ptr %irq_unmask, align 4
  %cpu_mask_clear = getelementptr inbounds %struct.brcmstb_intc_init_params, ptr %init_params, i32 0, i32 5
  %42 = ptrtoint ptr %cpu_mask_clear to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu_mask_clear, align 4
  %44 = ptrtoint ptr %regs65 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %regs65, align 4
  %irq_suspend = getelementptr inbounds %struct.irq_chip_generic, ptr %27, i32 1, i32 7
  %45 = ptrtoint ptr %irq_suspend to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @brcmstb_l2_intc_suspend, ptr %irq_suspend, align 4
  %irq_resume = getelementptr inbounds %struct.irq_chip_generic, ptr %27, i32 1, i32 8
  %46 = ptrtoint ptr %irq_resume to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @brcmstb_l2_intc_resume, ptr %irq_resume, align 4
  %irq_pm_shutdown = getelementptr inbounds %struct.irq_chip_generic, ptr %27, i32 1, i32 9
  %47 = ptrtoint ptr %irq_pm_shutdown to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @brcmstb_l2_intc_suspend, ptr %irq_pm_shutdown, align 4
  %48 = ptrtoint ptr %can_wake to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %can_wake, align 8, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool74.not = icmp eq i8 %49, 0
  br i1 %tobool74.not, label %if.end62.do.end82_crit_edge, label %if.then75

if.end62.do.end82_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end82

if.then75:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gc, align 4
  %wake_enabled = getelementptr inbounds %struct.irq_chip_generic, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %wake_enabled, align 4
  %irq_set_wake = getelementptr inbounds %struct.irq_chip_generic, ptr %27, i32 1, i32 4
  %53 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @irq_gc_set_wake, ptr %irq_set_wake, align 4
  %call.i1 = tail call i32 @irq_set_irq_wake(i32 noundef %call19, i32 noundef 1) #6
  br label %do.end82

do.end82:                                         ; preds = %if.then75, %if.end62.do.end82_crit_edge
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %np, i32 noundef %call19) #11
  br label %cleanup

out_unmap:                                        ; preds = %do.end46, %if.end27.out_unmap_crit_edge, %do.end24
  %ret.0 = phi i32 [ %call41, %do.end46 ], [ -22, %do.end24 ], [ -12, %if.end27.out_unmap_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call1) #6
  br label %out_free

out_free:                                         ; preds = %out_unmap, %do.end
  %ret.1 = phi i32 [ %ret.0, %out_unmap ], [ -12, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end82, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_free ], [ 0, %do.end82 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_l2_intc_irq_handle(ptr noundef %desc) #3 align 64 {
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
  %gc = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gc, align 4
  %status_offset = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %status_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status_offset, align 4
  %reg_readl.i = getelementptr inbounds %struct.irq_chip_generic, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i24 = icmp eq ptr %17, null
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %19, i32 %15
  br i1 %tobool.not.i24, label %if.else.i25, label %if.then.i

if.then.i:                                        ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %17(ptr noundef %add.ptr3.i) #6
  br label %irq_reg_readl.exit

if.else.i25:                                      ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #6, !srcloc !48
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  br label %irq_reg_readl.exit

irq_reg_readl.exit:                               ; preds = %if.else.i25, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %21, %if.else.i25 ]
  %22 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gc, align 4
  %mask_offset = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %mask_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask_offset, align 4
  %reg_readl.i26 = getelementptr inbounds %struct.irq_chip_generic, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %reg_readl.i26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_readl.i26, align 4
  %tobool.not.i27 = icmp eq ptr %27, null
  %reg_base2.i28 = getelementptr inbounds %struct.irq_chip_generic, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %reg_base2.i28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base2.i28, align 4
  %add.ptr3.i29 = getelementptr i8, ptr %29, i32 %25
  br i1 %tobool.not.i27, label %if.else.i32, label %if.then.i31

if.then.i31:                                      ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i30 = tail call i32 %27(ptr noundef %add.ptr3.i29) #6
  br label %irq_reg_readl.exit34

if.else.i32:                                      ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i29) #6, !srcloc !48
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  br label %irq_reg_readl.exit34

irq_reg_readl.exit34:                             ; preds = %if.else.i32, %if.then.i31
  %retval.0.i33 = phi i32 [ %call.i30, %if.then.i31 ], [ %31, %if.else.i32 ]
  %neg = xor i32 %retval.0.i33, -1
  %and = and i32 %retval.0.i, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %irq_reg_readl.exit34.do.body_crit_edge

irq_reg_readl.exit34.do.body_crit_edge:           ; preds = %irq_reg_readl.exit34
  br label %do.body

if.then:                                          ; preds = %irq_reg_readl.exit34
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  tail call void @handle_bad_irq(ptr noundef %desc) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %out

do.body:                                          ; preds = %do.body.do.body_crit_edge, %irq_reg_readl.exit34.do.body_crit_edge
  %status.0 = phi i32 [ %and7, %do.body.do.body_crit_edge ], [ %and, %irq_reg_readl.exit34.do.body_crit_edge ]
  %32 = tail call i32 @llvm.cttz.i32(i32 %status.0, i1 true), !range !50
  %shl = shl nuw i32 1, %32
  %neg6 = xor i32 %shl, -1
  %and7 = and i32 %status.0, %neg6
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call8 = tail call i32 @generic_handle_domain_irq(ptr noundef %34, i32 noundef %32) #6
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %do.body.out_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %do.body.out_crit_edge, %if.then
  %35 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i36 = icmp eq ptr %36, null
  br i1 %tobool.not.i36, label %if.else.i37, label %out.chained_irq_exit.exit_crit_edge

out.chained_irq_exit.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i37:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i37, %out.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %38, %if.else.i37 ], [ %36, %out.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_l2_mask_and_ack(ptr nocapture noundef readonly %d) #3 align 64 {
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
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #6
  %disable = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %disable, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %7
  tail call void %9(i32 noundef %5, ptr noundef %add.ptr.i) #6
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %12) #6, !srcloc !45
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %neg = xor i32 %5, -1
  %mask_cache = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mask_cache, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and = and i32 %18, %neg
  store i32 %and, ptr %16, align 4
  %ack = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ack, align 4
  %21 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i14 = icmp eq ptr %22, null
  br i1 %tobool.not.i14, label %do.body.i20, label %if.then.i17

if.then.i17:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %reg_base.i15 = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %reg_base.i15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %24, i32 %20
  tail call void %22(i32 noundef %5, ptr noundef %add.ptr.i16) #6
  br label %irq_reg_writel.exit21

do.body.i20:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %reg_base2.i18 = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %reg_base2.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base2.i18, align 4
  %add.ptr3.i19 = getelementptr i8, ptr %27, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i19, i32 %25) #6, !srcloc !45
  br label %irq_reg_writel.exit21

irq_reg_writel.exit21:                            ; preds = %do.body.i20, %if.then.i17
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_disable_reg(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_unmask_enable_reg(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_l2_intc_suspend(ptr nocapture noundef readonly %d) #3 align 64 {
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
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %mask = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %reg_readl.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %11, i32 %7
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %9(ptr noundef %add.ptr3.i) #6
  br label %irq_reg_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #6, !srcloc !48
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  br label %irq_reg_readl.exit

irq_reg_readl.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %13, %if.else.i ]
  %saved_mask = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %saved_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %saved_mask, align 4
  %can_wake = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %can_wake to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %can_wake, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %irq_reg_readl.exit.do.body7_crit_edge, label %if.then

irq_reg_readl.exit.do.body7_crit_edge:            ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

if.then:                                          ; preds = %irq_reg_readl.exit
  %regs = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1
  %wake_active = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wake_active, align 4
  %neg = xor i32 %18, -1
  %disable = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %disable, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i27 = icmp eq ptr %22, null
  br i1 %tobool.not.i27, label %do.body.i, label %if.then.i28

if.then.i28:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 %20
  tail call void %22(i32 noundef %neg, ptr noundef %add.ptr.i) #6
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %neg) #6
  %26 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i30 = getelementptr i8, ptr %27, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i30, i32 %25) #6, !srcloc !45
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i28
  %28 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wake_active, align 4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %regs, align 4
  %32 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i32 = icmp eq ptr %33, null
  br i1 %tobool.not.i32, label %do.body.i38, label %if.then.i35

if.then.i35:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %35, i32 %31
  tail call void %33(i32 noundef %29, ptr noundef %add.ptr.i34) #6
  br label %do.body7

do.body.i38:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  %37 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i37 = getelementptr i8, ptr %38, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i37, i32 %36) #6, !srcloc !45
  br label %do.body7

do.body7:                                         ; preds = %do.body.i38, %if.then.i35, %irq_reg_readl.exit.do.body7_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_l2_intc_resume(ptr nocapture noundef readonly %d) #3 align 64 {
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
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %irq_ack = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %irq_ack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_ack, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %saved_mask = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %saved_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saved_mask, align 4
  %wake_active = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wake_active, align 4
  %and.demorgan = or i32 %11, %9
  %and = xor i32 %and.demorgan, -1
  %ack = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ack, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %13
  tail call void %15(i32 noundef %and, ptr noundef %add.ptr.i) #6
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %20, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %18) #6, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.i, %entry.if.end_crit_edge
  %saved_mask4 = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %saved_mask4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %saved_mask4, align 4
  %regs5 = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1
  %disable = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %disable, align 4
  %reg_writel.i30 = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %reg_writel.i30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_writel.i30, align 4
  %tobool.not.i31 = icmp eq ptr %26, null
  br i1 %tobool.not.i31, label %do.body.i37, label %if.then.i34

if.then.i34:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %reg_base.i32 = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %reg_base.i32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %28, i32 %24
  tail call void %26(i32 noundef %22, ptr noundef %add.ptr.i33) #6
  br label %irq_reg_writel.exit38

do.body.i37:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %reg_base2.i35 = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %reg_base2.i35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base2.i35, align 4
  %add.ptr3.i36 = getelementptr i8, ptr %31, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i36, i32 %29) #6, !srcloc !45
  br label %irq_reg_writel.exit38

irq_reg_writel.exit38:                            ; preds = %do.body.i37, %if.then.i34
  %32 = ptrtoint ptr %saved_mask4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %saved_mask4, align 4
  %neg7 = xor i32 %33, -1
  %34 = ptrtoint ptr %regs5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %regs5, align 4
  %36 = ptrtoint ptr %reg_writel.i30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_writel.i30, align 4
  %tobool.not.i40 = icmp eq ptr %37, null
  br i1 %tobool.not.i40, label %do.body.i46, label %if.then.i43

if.then.i43:                                      ; preds = %irq_reg_writel.exit38
  call void @__sanitizer_cov_trace_pc() #8
  %reg_base.i41 = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %reg_base.i41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %39, i32 %35
  tail call void %37(i32 noundef %neg7, ptr noundef %add.ptr.i42) #6
  br label %irq_reg_writel.exit47

do.body.i46:                                      ; preds = %irq_reg_writel.exit38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %neg7) #6
  %reg_base2.i44 = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %reg_base2.i44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base2.i44, align 4
  %add.ptr3.i45 = getelementptr i8, ptr %42, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i45, i32 %40) #6, !srcloc !45
  br label %irq_reg_writel.exit47

irq_reg_writel.exit47:                            ; preds = %do.body.i46, %if.then.i43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_gc_set_wake(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !13, !14, !15, !16, !17, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_irq_brcmstb_l2__188_290_brcmstb_l2_driver_init6, !1, !"__initcall__kmod_irq_brcmstb_l2__188_290_brcmstb_l2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-brcmstb-l2.c", i32 290, i32 1}
!2 = !{ptr @__UNIQUE_ID_description189, !3, !"__UNIQUE_ID_description189", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-brcmstb-l2.c", i32 291, i32 1}
!4 = !{ptr @__UNIQUE_ID_file190, !5, !"__UNIQUE_ID_file190", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-brcmstb-l2.c", i32 292, i32 1}
!6 = !{ptr @__UNIQUE_ID_license191, !5, !"__UNIQUE_ID_license191", i1 false, i1 false}
!7 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @brcmstb_l2_driver, !1, !"brcmstb_l2_driver", i1 false, i1 false}
!9 = !{ptr @brcmstb_l2_irqchip_match_table, !10, !"brcmstb_l2_irqchip_match_table", i1 false, i1 false}
!10 = !{!"../drivers/irqchip/irq-brcmstb-l2.c", i32 285, i32 1}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/irq-brcmstb-l2.c", i32 177, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @brcmstb_l2_intc_of_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @brcmstb_l2_intc_of_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/irqchip/irq-brcmstb-l2.c", i32 186, i32 45}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/irqchip/irq-brcmstb-l2.c", i32 192, i32 3}
!21 = !{ptr @brcmstb_l2_intc_of_init._entry.5, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @brcmstb_l2_intc_of_init._entry_ptr.7, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-brcmstb-l2.c", i32 215, i32 3}
!25 = !{ptr @brcmstb_l2_intc_of_init._entry.8, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @brcmstb_l2_intc_of_init._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/irqchip/irq-brcmstb-l2.c", i32 260, i32 2}
!29 = !{ptr @brcmstb_l2_intc_of_init._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @brcmstb_l2_intc_of_init._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @l2_edge_intc_init, !32, !"l2_edge_intc_init", i1 false, i1 false}
!32 = !{!"../drivers/irqchip/irq-brcmstb-l2.c", i32 36, i32 46}
!33 = !{ptr @l2_lvl_intc_init, !34, !"l2_lvl_intc_init", i1 false, i1 false}
!34 = !{!"../drivers/irqchip/irq-brcmstb-l2.c", i32 46, i32 46}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2153650035}
!45 = !{i64 5345508}
!46 = !{i64 2153650479}
!47 = !{i8 0, i8 2}
!48 = !{i64 5345926}
!49 = !{i64 2152947780}
!50 = !{i32 0, i32 33}
!51 = !{i64 2152946910}
