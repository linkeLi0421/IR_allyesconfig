; ModuleID = '/llk/IR_all_yes/drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.c_pt.bc'
source_filename = "../drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_smmu_impl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvidia_smmu = type { %struct.arm_smmu_device, [2 x ptr], i32, ptr }
%struct.arm_smmu_device = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, [4 x i32], ptr, %struct.atomic_t, i32, i16, i16, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.spinlock, %struct.iommu_device }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@nvidia_smmu_single_impl = internal constant { %struct.arm_smmu_impl, [36 x i8] } { %struct.arm_smmu_impl { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvidia_smmu_probe_finalize }, [36 x i8] zeroinitializer }, align 32
@nvidia_smmu_impl = internal constant { %struct.arm_smmu_impl, [36 x i8] } { %struct.arm_smmu_impl { ptr @nvidia_smmu_read_reg, ptr @nvidia_smmu_write_reg, ptr @nvidia_smmu_read_reg64, ptr @nvidia_smmu_write_reg64, ptr null, ptr @nvidia_smmu_reset, ptr null, ptr @nvidia_smmu_tlb_sync, ptr null, ptr @nvidia_smmu_global_fault, ptr @nvidia_smmu_context_fault, ptr null, ptr null, ptr null, ptr @nvidia_smmu_probe_finalize }, [36 x i8] zeroinitializer }, align 32
@nvidia_smmu_probe_finalize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"memory controller probe failed for %s: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvidia_smmu_probe_finalize\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvidia_smmu_probe_finalize._entry_ptr = internal global ptr @nvidia_smmu_probe_finalize._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@nvidia_smmu_tlb_sync._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.nvidia_smmu_tlb_sync = private unnamed_addr constant [21 x i8] c"nvidia_smmu_tlb_sync\00", align 1
@nvidia_smmu_tlb_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.nvidia_smmu_tlb_sync, ptr @.str.2, i32 129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"TLB sync timed out -- SMMU may be deadlocked\0A\00", [50 x i8] zeroinitializer }, align 32
@nvidia_smmu_tlb_sync._entry_ptr = internal global ptr @nvidia_smmu_tlb_sync._entry, section ".printk_index", align 4
@nvidia_smmu_global_fault_inst._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.nvidia_smmu_global_fault_inst = private unnamed_addr constant [30 x i8] c"nvidia_smmu_global_fault_inst\00", align 1
@nvidia_smmu_global_fault_inst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.nvidia_smmu_global_fault_inst, ptr @.str.2, i32 166, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unexpected global fault, this could be serious\0A\00", [48 x i8] zeroinitializer }, align 32
@nvidia_smmu_global_fault_inst._entry_ptr = internal global ptr @nvidia_smmu_global_fault_inst._entry, section ".printk_index", align 4
@nvidia_smmu_global_fault_inst._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nvidia_smmu_global_fault_inst._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.nvidia_smmu_global_fault_inst, ptr @.str.2, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\09GFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvidia_smmu_global_fault_inst._entry_ptr.11 = internal global ptr @nvidia_smmu_global_fault_inst._entry.9, section ".printk_index", align 4
@nvidia_smmu_context_fault_bank._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.nvidia_smmu_context_fault_bank = private unnamed_addr constant [31 x i8] c"nvidia_smmu_context_fault_bank\00", align 1
@nvidia_smmu_context_fault_bank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.nvidia_smmu_context_fault_bank, ptr @.str.2, i32 212, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Unhandled context fault: fsr=0x%x, iova=0x%08lx, fsynr=0x%x, cbfrsynra=0x%x, cb=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@nvidia_smmu_context_fault_bank._entry_ptr = internal global ptr @nvidia_smmu_context_fault_bank._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"nvidia_smmu_single_impl\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 273, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"nvidia_smmu_impl\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 261, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 257, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 128, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 165, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 167, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [48 x i8] c"../drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 210, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @nvidia_smmu_context_fault_bank._entry, ptr @nvidia_smmu_context_fault_bank._entry_ptr, ptr @nvidia_smmu_global_fault_inst._entry, ptr @nvidia_smmu_global_fault_inst._entry.9, ptr @nvidia_smmu_global_fault_inst._entry_ptr, ptr @nvidia_smmu_global_fault_inst._entry_ptr.11, ptr @nvidia_smmu_probe_finalize._entry, ptr @nvidia_smmu_probe_finalize._entry_ptr, ptr @nvidia_smmu_tlb_sync._entry, ptr @nvidia_smmu_tlb_sync._entry_ptr, ptr @nvidia_smmu_single_impl, ptr @nvidia_smmu_impl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nvidia_smmu_tlb_sync._rs, ptr @.str.5, ptr @.str.6, ptr @nvidia_smmu_global_fault_inst._rs, ptr @.str.7, ptr @nvidia_smmu_global_fault_inst._rs.8, ptr @.str.10, ptr @nvidia_smmu_context_fault_bank._rs, ptr @.str.12], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_smmu_single_impl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_smmu_impl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_smmu_probe_finalize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_smmu_tlb_sync._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_smmu_tlb_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_smmu_global_fault_inst._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_smmu_global_fault_inst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_smmu_global_fault_inst._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_smmu_global_fault_inst._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_smmu_context_fault_bank._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_smmu_context_fault_bank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvidia_smmu_impl_init(ptr noundef %smmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smmu, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call ptr @devm_krealloc(ptr noundef %1, ptr noundef %smmu, i32 noundef 288, i32 noundef 3264) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_tegra_memory_controller_get(ptr noundef %1) #4
  %mc = getelementptr inbounds %struct.nvidia_smmu, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %mc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %mc, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %base = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %bases = getelementptr inbounds %struct.nvidia_smmu, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %bases to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %bases, align 4
  %num_instances = getelementptr inbounds %struct.nvidia_smmu, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %6)
  %storemerge.in = load i32, ptr %num_instances, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %num_instances, align 4
  %call10 = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 1) #4
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %for.endthread-pre-split, label %if.end13

if.end13:                                         ; preds = %if.end9
  %call14 = tail call ptr @devm_ioremap_resource(ptr noundef %1, ptr noundef nonnull %call10) #4
  %arrayidx16 = getelementptr %struct.nvidia_smmu, ptr %call, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %arrayidx16, align 4
  %cmp.i64 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %if.end13.cleanup_crit_edge, label %for.end.critedge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end.critedge:                                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %8)
  %storemerge.in.c = load i32, ptr %num_instances, align 4
  %storemerge.c = add i32 %storemerge.in.c, 1
  store i32 %storemerge.c, ptr %num_instances, align 4
  br label %for.end

for.endthread-pre-split:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %num_instances, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %for.end.critedge
  %10 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %storemerge.c, %for.end.critedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp29 = icmp eq i32 %10, 1
  %impl = getelementptr inbounds %struct.arm_smmu_device, ptr %call, i32 0, i32 7
  %nvidia_smmu_single_impl.nvidia_smmu_impl = select i1 %cmp29, ptr @nvidia_smmu_single_impl, ptr @nvidia_smmu_impl
  %11 = ptrtoint ptr %impl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %nvidia_smmu_single_impl.nvidia_smmu_impl, ptr %impl, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_krealloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_tegra_memory_controller_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvidia_smmu_probe_finalize(ptr nocapture noundef readonly %smmu, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mc = getelementptr inbounds %struct.nvidia_smmu, ptr %smmu, i32 0, i32 3
  %0 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc, align 4
  %call1 = tail call i32 @tegra_mc_probe_device(ptr noundef %1, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smmu, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef %retval.0.i, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mc_probe_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidia_smmu_read_reg(ptr nocapture noundef readonly %smmu, i32 noundef %page, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.nvidia_smmu, ptr %smmu, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %pgshift.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %2 = ptrtoint ptr %pgshift.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgshift.i, align 4
  %shl.i = shl i32 %page, %3
  %add.ptr1.i = getelementptr i8, ptr %1, i32 %shl.i
  %add.ptr = getelementptr i8, ptr %add.ptr1.i, i32 %offset
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !45
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvidia_smmu_write_reg(ptr nocapture noundef readonly %smmu, i32 noundef %page, i32 noundef %offset, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.nvidia_smmu, ptr %smmu, i32 0, i32 2
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pgshift.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %2 = tail call i32 @llvm.bswap.i32(i32 %val)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.nvidia_smmu, ptr %smmu, i32 0, i32 1, i32 %i.06
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %pgshift.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pgshift.i, align 4
  %shl.i = shl i32 %page, %6
  %add.ptr1.i = getelementptr i8, ptr %4, i32 %offset
  %add.ptr = getelementptr i8, ptr %add.ptr1.i, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !46
  %inc = add nuw i32 %i.06, 1
  %7 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_instances, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nvidia_smmu_read_reg64(ptr nocapture noundef readonly %smmu, i32 noundef %page, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.nvidia_smmu, ptr %smmu, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %pgshift.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %2 = ptrtoint ptr %pgshift.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgshift.i, align 4
  %shl.i = shl i32 %page, %3
  %add.ptr1.i = getelementptr i8, ptr %1, i32 %shl.i
  %add.ptr = getelementptr i8, ptr %add.ptr1.i, i32 %offset
  %add.ptr.i = getelementptr i32, ptr %add.ptr, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !45
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !45
  %6 = zext i32 %4 to i64
  %7 = zext i32 %5 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, %6
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #4
  ret i64 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvidia_smmu_write_reg64(ptr nocapture noundef readonly %smmu, i32 noundef %page, i32 noundef %offset, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.nvidia_smmu, ptr %smmu, i32 0, i32 2
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pgshift.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %shr.i = lshr i64 %val, 32
  %conv.i = trunc i64 %shr.i to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #4
  %conv1.i = trunc i64 %val to i32
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.nvidia_smmu, ptr %smmu, i32 0, i32 1, i32 %i.06
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %pgshift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgshift.i, align 4
  %shl.i = shl i32 %page, %7
  %add.ptr1.i = getelementptr i8, ptr %5, i32 %offset
  %add.ptr = getelementptr i8, ptr %add.ptr1.i, i32 %shl.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #4, !srcloc !46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #4, !srcloc !46
  %inc = add nuw i32 %i.06, 1
  %8 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_instances, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidia_smmu_reset(ptr nocapture noundef readonly %smmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.nvidia_smmu, ptr %smmu, i32 0, i32 2
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.nvidia_smmu, ptr %smmu, i32 0, i32 1, i32 %i.08
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 72
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #4, !srcloc !46
  %inc = add nuw i32 %i.08, 1
  %5 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_instances, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvidia_smmu_tlb_sync(ptr noundef %smmu, i32 noundef %page, i32 noundef %sync, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %0 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i, !prof !47

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef %smmu, i32 noundef %page, i32 noundef %sync, i32 noundef 0) #4
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %pgshift.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %6 = ptrtoint ptr %pgshift.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgshift.i.i, align 4
  %shl.i.i = shl i32 %page, %7
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %shl.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %sync
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !46
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i
  %num_instances = getelementptr inbounds %struct.nvidia_smmu, ptr %smmu, i32 0, i32 2
  %pgshift.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %cond.false20.for.cond1.preheader_crit_edge, %arm_smmu_writel.exit
  %delay.065 = phi i32 [ 1, %arm_smmu_writel.exit ], [ %mul26, %cond.false20.for.cond1.preheader_crit_edge ]
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %do.end.for.cond4.preheader_crit_edge, %for.cond1.preheader
  %spin_cnt.063 = phi i32 [ 10, %for.cond1.preheader ], [ %dec, %do.end.for.cond4.preheader_crit_edge ]
  %8 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp560.not = icmp eq i32 %9, 0
  br i1 %cmp560.not, label %for.cond4.preheader.cleanup38_crit_edge, label %for.cond4.preheader.for.body6_crit_edge

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

for.cond4.preheader.cleanup38_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup38

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %i.062 = phi i32 [ %inc, %for.body6.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  %val.061 = phi i32 [ %or, %for.body6.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  %arrayidx.i = getelementptr %struct.nvidia_smmu, ptr %smmu, i32 0, i32 1, i32 %i.062
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %pgshift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pgshift.i, align 4
  %shl.i = shl i32 %page, %13
  %add.ptr1.i = getelementptr i8, ptr %11, i32 %status
  %add.ptr = getelementptr i8, ptr %add.ptr1.i, i32 %shl.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !45
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %or = or i32 %15, %val.061
  %inc = add nuw i32 %i.062, 1
  %16 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_instances, align 4
  %cmp5 = icmp ult i32 %inc, %17
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.end

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6

for.end:                                          ; preds = %for.body6
  %and = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end.cleanup38_crit_edge, label %do.end

for.end.cleanup38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup38

do.end:                                           ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !49
  %dec = add nsw i32 %spin_cnt.063, -1
  %cmp2.not = icmp eq i32 %dec, 0
  br i1 %cmp2.not, label %cond.false20, label %do.end.for.cond4.preheader_crit_edge

do.end.for.cond4.preheader_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond4.preheader

cond.false20:                                     ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %18(i32 noundef %delay.065) #4
  %mul26 = shl i32 %delay.065, 1
  %cmp = icmp ult i32 %mul26, 1000000
  br i1 %cmp, label %cond.false20.for.cond1.preheader_crit_edge, label %do.body28

cond.false20.for.cond1.preheader_crit_edge:       ; preds = %cond.false20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond1.preheader

do.body28:                                        ; preds = %cond.false20
  %call29 = tail call i32 @___ratelimit(ptr noundef nonnull @nvidia_smmu_tlb_sync._rs, ptr noundef nonnull @__func__.nvidia_smmu_tlb_sync) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body28.cleanup38_crit_edge, label %do.end34

do.body28.cleanup38_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup38

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.6) #7
  br label %cleanup38

cleanup38:                                        ; preds = %do.end34, %do.body28.cleanup38_crit_edge, %for.end.cleanup38_crit_edge, %for.cond4.preheader.cleanup38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidia_smmu_global_fault(i32 noundef %irq, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.nvidia_smmu, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %nvidia_smmu_global_fault_inst.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %inst.010 = phi i32 [ %inc, %nvidia_smmu_global_fault_inst.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ret.09 = phi i32 [ %17, %nvidia_smmu_global_fault_inst.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.nvidia_smmu, ptr %dev, i32 0, i32 1, i32 %inst.010
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 72
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !45
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %for.body.nvidia_smmu_global_fault_inst.exit_crit_edge, label %if.end.i

for.body.nvidia_smmu_global_fault_inst.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvidia_smmu_global_fault_inst.exit

if.end.i:                                         ; preds = %for.body
  %add.ptr3.i = getelementptr i8, ptr %3, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #4, !srcloc !45
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  %add.ptr7.i = getelementptr i8, ptr %3, i32 84
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #4, !srcloc !45
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  %add.ptr11.i = getelementptr i8, ptr %3, i32 88
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #4, !srcloc !45
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  %call14.i = tail call i32 @___ratelimit(ptr noundef nonnull @nvidia_smmu_global_fault_inst._rs, ptr noundef nonnull @__func__.nvidia_smmu_global_fault_inst) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end.i.do.body21.i_crit_edge, label %do.end.i

if.end.i.do.body21.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body21.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7) #7
  br label %do.body21.i

do.body21.i:                                      ; preds = %do.end.i, %if.end.i.do.body21.i_crit_edge
  %call22.i = tail call i32 @___ratelimit(ptr noundef nonnull @nvidia_smmu_global_fault_inst._rs.8, ptr noundef nonnull @__func__.nvidia_smmu_global_fault_inst) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %do.body21.i._crit_edge, label %do.end27.i

do.body21.i._crit_edge:                           ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %16

do.end27.i:                                       ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.10, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #7
  br label %16

16:                                               ; preds = %do.end27.i, %do.body21.i._crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #4, !srcloc !46
  br label %nvidia_smmu_global_fault_inst.exit

nvidia_smmu_global_fault_inst.exit:               ; preds = %16, %for.body.nvidia_smmu_global_fault_inst.exit_crit_edge
  %17 = phi i32 [ 1, %16 ], [ %ret.09, %for.body.nvidia_smmu_global_fault_inst.exit_crit_edge ]
  %inc = add nuw i32 %inst.010, 1
  %18 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_instances, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %nvidia_smmu_global_fault_inst.exit.for.body_crit_edge, label %nvidia_smmu_global_fault_inst.exit.for.end_crit_edge

nvidia_smmu_global_fault_inst.exit.for.end_crit_edge: ; preds = %nvidia_smmu_global_fault_inst.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

nvidia_smmu_global_fault_inst.exit.for.body_crit_edge: ; preds = %nvidia_smmu_global_fault_inst.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %nvidia_smmu_global_fault_inst.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %17, %nvidia_smmu_global_fault_inst.exit.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvidia_smmu_context_fault(i32 noundef %irq, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -172
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %num_instances = getelementptr inbounds %struct.nvidia_smmu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.not = icmp eq i32 %3, 0
  br i1 %cmp23.not, label %entry.for.end9_crit_edge, label %for.cond2.preheader.lr.ph

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end9

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %num_context_banks = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 8
  %pgshift.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %numpage.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 2
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.end.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %inst.025 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc8, %for.end.for.cond2.preheader_crit_edge ]
  %ret.024 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %ret.1.lcssa, %for.end.for.cond2.preheader_crit_edge ]
  %4 = ptrtoint ptr %num_context_banks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_context_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp318.not = icmp eq i32 %5, 0
  br i1 %cmp318.not, label %for.cond2.preheader.for.end_crit_edge, label %for.body4.lr.ph

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %arrayidx.i.i = getelementptr %struct.nvidia_smmu, ptr %1, i32 0, i32 1, i32 %inst.025
  br label %for.body4

for.body4:                                        ; preds = %nvidia_smmu_context_fault_bank.exit.for.body4_crit_edge, %for.body4.lr.ph
  %idx.020 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %nvidia_smmu_context_fault_bank.exit.for.body4_crit_edge ]
  %ret.119 = phi i32 [ %ret.024, %for.body4.lr.ph ], [ %24, %nvidia_smmu_context_fault_bank.exit.for.body4_crit_edge ]
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %8 = ptrtoint ptr %pgshift.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pgshift.i.i, align 4
  %10 = ptrtoint ptr %numpage.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %numpage.i, align 4
  %add.i = add i32 %11, %idx.020
  %shl.i3.i = shl i32 %add.i, %9
  %add.ptr1.i4.i = getelementptr i8, ptr %7, i32 %shl.i3.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i4.i, i32 88
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !45
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  %and.i = and i32 %13, -1073741314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body4.nvidia_smmu_context_fault_bank.exit_crit_edge, label %if.end.i

for.body4.nvidia_smmu_context_fault_bank.exit_crit_edge: ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvidia_smmu_context_fault_bank.exit

if.end.i:                                         ; preds = %for.body4
  %shl.i.i = shl nuw i32 1, %9
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 %shl.i.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr1.i4.i, i32 104
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #4, !srcloc !45
  %add.ptr7.i = getelementptr i8, ptr %add.ptr1.i4.i, i32 96
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr7.i, i32 1
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !45
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #4, !srcloc !45
  %shl.i = shl i32 %idx.020, 2
  %add10.i = add i32 %shl.i, 1024
  %add.ptr11.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %add10.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #4, !srcloc !45
  %call14.i = tail call i32 @___ratelimit(ptr noundef nonnull @nvidia_smmu_context_fault_bank._rs, ptr noundef nonnull @__func__.nvidia_smmu_context_fault_bank) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end.i._crit_edge, label %do.end.i

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %23

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %17) #4
  %20 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.12, i32 noundef %13, i32 noundef %18, i32 noundef %20, i32 noundef %19, i32 noundef %idx.020) #7
  br label %23

23:                                               ; preds = %do.end.i, %if.end.i._crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #4, !srcloc !46
  br label %nvidia_smmu_context_fault_bank.exit

nvidia_smmu_context_fault_bank.exit:              ; preds = %23, %for.body4.nvidia_smmu_context_fault_bank.exit_crit_edge
  %24 = phi i32 [ 1, %23 ], [ %ret.119, %for.body4.nvidia_smmu_context_fault_bank.exit_crit_edge ]
  %inc = add nuw i32 %idx.020, 1
  %25 = ptrtoint ptr %num_context_banks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_context_banks, align 4
  %cmp3 = icmp ult i32 %inc, %26
  br i1 %cmp3, label %nvidia_smmu_context_fault_bank.exit.for.body4_crit_edge, label %nvidia_smmu_context_fault_bank.exit.for.end_crit_edge

nvidia_smmu_context_fault_bank.exit.for.end_crit_edge: ; preds = %nvidia_smmu_context_fault_bank.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

nvidia_smmu_context_fault_bank.exit.for.body4_crit_edge: ; preds = %nvidia_smmu_context_fault_bank.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body4

for.end:                                          ; preds = %nvidia_smmu_context_fault_bank.exit.for.end_crit_edge, %for.cond2.preheader.for.end_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.024, %for.cond2.preheader.for.end_crit_edge ], [ %24, %nvidia_smmu_context_fault_bank.exit.for.end_crit_edge ]
  %inc8 = add nuw i32 %inst.025, 1
  %27 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_instances, align 4
  %cmp = icmp ult i32 %inc8, %28
  br i1 %cmp, label %for.end.for.cond2.preheader_crit_edge, label %for.end.for.end9_crit_edge

for.end.for.end9_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end9

for.end.for.cond2.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond2.preheader

for.end9:                                         ; preds = %for.end.for.end9_crit_edge, %entry.for.end9_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end9_crit_edge ], [ %ret.1.lcssa, %for.end.for.end9_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @nvidia_smmu_single_impl, !1, !"nvidia_smmu_single_impl", i1 false, i1 false}
!1 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.c", i32 273, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.c", i32 257, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nvidia_smmu_probe_finalize._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvidia_smmu_probe_finalize._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @nvidia_smmu_impl, !11, !"nvidia_smmu_impl", i1 false, i1 false}
!11 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.c", i32 261, i32 35}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.c", i32 128, i32 2}
!14 = !{ptr @nvidia_smmu_tlb_sync._rs, !13, !"_rs", i1 false, i1 false}
!15 = !{ptr @__func__.nvidia_smmu_tlb_sync, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nvidia_smmu_tlb_sync._entry, !13, !"_entry", i1 false, i1 false}
!18 = !{ptr @nvidia_smmu_tlb_sync._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @nvidia_smmu_global_fault_inst._rs, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.c", i32 165, i32 2}
!21 = !{ptr @__func__.nvidia_smmu_global_fault_inst, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nvidia_smmu_global_fault_inst._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @nvidia_smmu_global_fault_inst._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @nvidia_smmu_global_fault_inst._rs.8, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.c", i32 167, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nvidia_smmu_global_fault_inst._entry.9, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @nvidia_smmu_global_fault_inst._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @nvidia_smmu_context_fault_bank._rs, !31, !"_rs", i1 false, i1 false}
!31 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.c", i32 210, i32 2}
!32 = !{ptr @__func__.nvidia_smmu_context_fault_bank, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nvidia_smmu_context_fault_bank._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @nvidia_smmu_context_fault_bank._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 6160814}
!46 = !{i64 6160396}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2154831190}
!49 = !{i64 2154831032}
