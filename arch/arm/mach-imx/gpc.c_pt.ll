; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/gpc.c_pt.bc'
source_filename = "../arch/arm/mach-imx/gpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
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

@gpc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gpc_saved_imrs.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gpc_saved_imrs.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gpc_saved_imrs.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gpc_saved_imrs.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gpc_wake_irqs = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@__of_table_imx_gpc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_gpc_init }, section "__irqchip_of_table", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx6q-gpc\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arch/arm/mach-imx/gpc.c\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@imx_gpc_check_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014Outdated DT detected, suspend/resume will NOT work\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_gpc_check_dt\00", [47 x i8] zeroinitializer }, align 32
@imx_gpc_check_dt._entry_ptr = internal global ptr @imx_gpc_check_dt._entry, section ".printk_index", align 4
@imx_gpc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.1, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%pOF: no parent, giving up\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx_gpc_init\00", [19 x i8] zeroinitializer }, align 32
@imx_gpc_init._entry_ptr = internal global ptr @imx_gpc_init._entry, section ".printk_index", align 4
@imx_gpc_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.1, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%pOF: unable to obtain parent domain\0A\00", [56 x i8] zeroinitializer }, align 32
@imx_gpc_init._entry_ptr.9 = internal global ptr @imx_gpc_init._entry.7, section ".printk_index", align 4
@imx_gpc_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_gpc_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @imx_gpc_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@imx_gpc_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_gpc_irq_mask, ptr null, ptr @imx_gpc_irq_unmask, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @irq_chip_set_type_parent, ptr @imx_gpc_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPC\00", [28 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"gpc_base\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 30, i32 22 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"gpc_saved_imrs.0\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"gpc_saved_imrs.1\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"gpc_saved_imrs.2\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"gpc_saved_imrs.3\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"gpc_wake_irqs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 31, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 274, i32 43 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 275, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 278, i32 6 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 279, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 234, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 240, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"imx_gpc_domain_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 221, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"imx_gpc_chip\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 159, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [27 x i8] c"../arch/arm/mach-imx/gpc.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 160, i32 12 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__of_table_imx_gpc, ptr @imx_gpc_check_dt._entry, ptr @imx_gpc_check_dt._entry_ptr, ptr @imx_gpc_init._entry, ptr @imx_gpc_init._entry.7, ptr @imx_gpc_init._entry_ptr, ptr @imx_gpc_init._entry_ptr.9, ptr @gpc_base, ptr @gpc_saved_imrs.0, ptr @gpc_saved_imrs.1, ptr @gpc_saved_imrs.2, ptr @gpc_saved_imrs.3, ptr @gpc_wake_irqs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @imx_gpc_domain_ops, ptr @imx_gpc_chip, ptr @.str.10], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpc_saved_imrs.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpc_saved_imrs.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpc_saved_imrs.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpc_saved_imrs.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpc_wake_irqs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_check_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_gpc_set_arm_power_up_timing(i32 noundef %sw2iso, i32 noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %sw2iso, 8
  %or = or i32 %shl, %sw
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %1 = load ptr, ptr @gpc_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !43
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_gpc_set_arm_power_down_timing(i32 noundef %sw2iso, i32 noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %sw2iso, 8
  %or = or i32 %shl, %sw
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %1 = load ptr, ptr @gpc_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_gpc_set_arm_power_in_lpm(i1 noundef zeroext %power_off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = select i1 %power_off, i32 16777216, i32 0
  %1 = load ptr, ptr @gpc_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_gpc_set_l2_mem_power_in_lpm(i1 noundef zeroext %power_off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpc_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !44
  %2 = and i32 %1, -16385
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %or = or i32 %3, 4194304
  %spec.select = select i1 %power_off, i32 %or, i32 %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %5 = load ptr, ptr @gpc_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %4) #7, !srcloc !43
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_gpc_pre_suspend(i1 noundef zeroext %arm_power_off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpc_base, align 4
  br i1 %arm_power_off, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %0, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !43
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %0, i32 8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !44
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, ptr @gpc_saved_imrs.0, align 4
  %3 = load i32, ptr @gpc_wake_irqs, align 4
  %neg = xor i32 %3, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %neg)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !43
  %add.ptr2.1 = getelementptr i8, ptr %0, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.1) #7, !srcloc !44
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  store i32 %6, ptr @gpc_saved_imrs.1, align 4
  %7 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @gpc_wake_irqs, i32 0, i32 1), align 4
  %neg.1 = xor i32 %7, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %neg.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.1, i32 %8) #7, !srcloc !43
  %add.ptr2.2 = getelementptr i8, ptr %0, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.2) #7, !srcloc !44
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  store i32 %10, ptr @gpc_saved_imrs.2, align 4
  %11 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @gpc_wake_irqs, i32 0, i32 2), align 4
  %neg.2 = xor i32 %11, -1
  %12 = tail call i32 @llvm.bswap.i32(i32 %neg.2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.2, i32 %12) #7, !srcloc !43
  %add.ptr2.3 = getelementptr i8, ptr %0, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.3) #7, !srcloc !44
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  store i32 %14, ptr @gpc_saved_imrs.3, align 4
  %15 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @gpc_wake_irqs, i32 0, i32 3), align 4
  %neg.3 = xor i32 %15, -1
  %16 = tail call i32 @llvm.bswap.i32(i32 %neg.3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.3, i32 %16) #7, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_gpc_post_resume() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpc_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  %add.ptr.i = getelementptr i8, ptr %0, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !43
  %1 = load i32, ptr @gpc_saved_imrs.0, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !43
  %3 = load i32, ptr @gpc_saved_imrs.1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add.ptr1.1 = getelementptr i8, ptr %0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.1, i32 %4) #7, !srcloc !43
  %5 = load i32, ptr @gpc_saved_imrs.2, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr1.2 = getelementptr i8, ptr %0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.2, i32 %6) #7, !srcloc !43
  %7 = load i32, ptr @gpc_saved_imrs.3, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr1.3 = getelementptr i8, ptr %0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.3, i32 %8) #7, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_gpc_mask_all() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpc_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !44
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, ptr @gpc_saved_imrs.0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #7, !srcloc !43
  %add.ptr1.1 = getelementptr i8, ptr %0, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.1) #7, !srcloc !44
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  store i32 %4, ptr @gpc_saved_imrs.1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.1, i32 -1) #7, !srcloc !43
  %add.ptr1.2 = getelementptr i8, ptr %0, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.2) #7, !srcloc !44
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  store i32 %6, ptr @gpc_saved_imrs.2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.2, i32 -1) #7, !srcloc !43
  %add.ptr1.3 = getelementptr i8, ptr %0, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.3) #7, !srcloc !44
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  store i32 %8, ptr @gpc_saved_imrs.3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.3, i32 -1) #7, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_gpc_restore_all() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpc_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  %1 = load i32, ptr @gpc_saved_imrs.0, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !43
  %3 = load i32, ptr @gpc_saved_imrs.1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add.ptr1.1 = getelementptr i8, ptr %0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.1, i32 %4) #7, !srcloc !43
  %5 = load i32, ptr @gpc_saved_imrs.2, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr1.2 = getelementptr i8, ptr %0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.2, i32 %6) #7, !srcloc !43
  %7 = load i32, ptr @gpc_saved_imrs.3, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr1.3 = getelementptr i8, ptr %0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.3, i32 %8) #7, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_gpc_hwirq_unmask(i32 noundef %hwirq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpc_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  %1 = lshr i32 %hwirq, 3
  %mul = and i32 %1, 536870908
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !44
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %rem = and i32 %hwirq, 31
  %shl = shl nuw i32 1, %rem
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %4) #7, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_gpc_hwirq_mask(i32 noundef %hwirq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpc_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  %1 = lshr i32 %hwirq, 3
  %mul = and i32 %1, 536870908
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !44
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %rem = and i32 %hwirq, 31
  %shl = shl nuw i32 1, %rem
  %or = or i32 %3, %shl
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %4) #7, !srcloc !43
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_gpc_init(ptr noundef %node, ptr noundef %parent) #3 section ".init.text" align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %node) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #7
  %0 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #7
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

irq_find_host.exit:                               ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #7
  %3 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 68)
  %5 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #7
  %tobool2.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool2.not, label %do.end6, label %irq_find_host.exit.if.end9_crit_edge

irq_find_host.exit.if.end9_crit_edge:             ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end6:                                          ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %node) #10
  br label %cleanup

if.end9:                                          ; preds = %irq_find_host.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %d.0.i59 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end9_crit_edge ], [ %call.i.i.i, %if.end.if.end9_crit_edge ]
  %call10 = call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #7
  store ptr %call10, ptr @gpc_base, align 4
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end24, label %if.end40, !prof !45

do.end24:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 245, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end40:                                         ; preds = %if.end9
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i59, i32 noundef 0, i32 noundef 128, ptr noundef %spec.select.i.i, ptr noundef nonnull @imx_gpc_domain_ops, ptr noundef null) #7
  %tobool42.not = icmp eq ptr %call1.i, null
  br i1 %tobool42.not, label %if.then43, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  br label %for.body

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load ptr, ptr @gpc_base, align 4
  call void @iounmap(ptr noundef %6) #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end40.for.body_crit_edge
  %i.060 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end40.for.body_crit_edge ]
  %7 = load ptr, ptr @gpc_base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %mul = shl i32 %i.060, 2
  %add.ptr45 = getelementptr i8, ptr %add.ptr, i32 %mul
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 -1) #7, !srcloc !43
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then43, %do.end24, %do.end6, %do.end
  %retval.0 = phi i32 [ -12, %do.end24 ], [ 0, %for.end ], [ -12, %if.then43 ], [ -6, %do.end6 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_gpc_check_dt() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !45

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 275, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call25 = tail call ptr @of_find_property(ptr noundef nonnull %call, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end44, label %if.end23.if.end66_crit_edge, !prof !45

if.end23.if.end66_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

do.end44:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 278, i32 noundef 9, ptr noundef null) #7
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  %call65 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #7
  store ptr %call65, ptr @gpc_base, align 4
  br label %if.end66

if.end66:                                         ; preds = %do.end44, %if.end23.if.end66_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_gpc_domain_alloc(ptr noundef %domain, i32 noundef %irq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #7
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx5 = getelementptr %struct.irq_fwspec, ptr %data, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %5)
  %cmp6 = icmp ugt i32 %5, 127
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %for.cond.preheader

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp927.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp927.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %i.028, %irq
  %add10 = add i32 %i.028, %5
  %call = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %add, i32 noundef %add10, ptr noundef nonnull @imx_gpc_chip, ptr noundef null) #7
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %6 = call ptr @memcpy(ptr %parent_fwspec, ptr %data, i32 72)
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fwnode, align 4
  %11 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %parent_fwspec, align 4
  %call12 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %irq, i32 noundef %nr_irqs, ptr noundef nonnull %parent_fwspec) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx_gpc_domain_translate(ptr nocapture noundef readnone %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.return_crit_edge, label %is_of_node.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %3, @of_fwnode_ops
  br i1 %cmp.i, label %if.then, label %is_of_node.exit.return_crit_edge

is_of_node.exit.return_crit_edge:                 ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_gpc_irq_mask(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %2 = load ptr, ptr @gpc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 8
  %3 = lshr i32 %1, 3
  %mul.i = and i32 %3, 536870908
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !44
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %rem.i = and i32 %1, 31
  %shl.i = shl nuw i32 1, %rem.i
  %or.i = or i32 %5, %shl.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %6) #7, !srcloc !43
  tail call void @irq_chip_mask_parent(ptr noundef %d) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_gpc_irq_unmask(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %2 = load ptr, ptr @gpc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 8
  %3 = lshr i32 %1, 3
  %mul.i = and i32 %3, 536870908
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !44
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %rem.i = and i32 %1, 31
  %shl.i = shl nuw i32 1, %rem.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %5, %neg.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %6) #7, !srcloc !43
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx_gpc_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %div8 = lshr i32 %1, 5
  %rem = and i32 %1, 31
  %shl = shl nuw i32 1, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %arrayidx2 = getelementptr [4 x i32], ptr @gpc_wake_irqs, i32 0, i32 %div8
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %or = or i32 %3, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %cond = select i1 %tobool.not, i32 %and, i32 %or
  %arrayidx3 = getelementptr [4 x i32], ptr @gpc_wake_irqs, i32 0, i32 %div8
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %arrayidx3, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__of_table_imx_gpc, !1, !"__of_table_imx_gpc", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/gpc.c", i32 268, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-imx/gpc.c", i32 274, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-imx/gpc.c", i32 275, i32 6}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-imx/gpc.c", i32 278, i32 6}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-imx/gpc.c", i32 279, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @imx_gpc_check_dt._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @imx_gpc_check_dt._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @gpc_base, !14, !"gpc_base", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-imx/gpc.c", i32 30, i32 22}
!15 = !{ptr @gpc_wake_irqs, !16, !"gpc_wake_irqs", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-imx/gpc.c", i32 31, i32 12}
!17 = distinct !{null, !18, !"gpc_saved_imrs", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-imx/gpc.c", i32 32, i32 12}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-imx/gpc.c", i32 234, i32 3}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @imx_gpc_init._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @imx_gpc_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-imx/gpc.c", i32 240, i32 3}
!26 = !{ptr @imx_gpc_init._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @imx_gpc_init._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @imx_gpc_domain_ops, !29, !"imx_gpc_domain_ops", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-imx/gpc.c", i32 221, i32 36}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-imx/gpc.c", i32 160, i32 12}
!32 = !{ptr @imx_gpc_chip, !33, !"imx_gpc_chip", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-imx/gpc.c", i32 159, i32 24}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 689764}
!44 = !{i64 690182}
!45 = !{!"branch_weights", i32 1, i32 2000}
