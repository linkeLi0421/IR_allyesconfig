; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/lima/lima_mmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_mmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon }
%union.anon = type { %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lima_vm = type { %struct.mutex, %struct.kref, %struct.drm_mm, ptr, %struct.lima_vm_page, [128 x %struct.lima_vm_page] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lima_vm_page = type { ptr, i32 }

@lima_mmu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mmu %s dte write test fail\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lima_mmu_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/lima/lima_mmu.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lima_mmu_init._entry_ptr = internal global ptr @lima_mmu_init._entry, section ".printk_index", align 4
@lima_mmu_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mmu %s fail to request irq\0A\00", [36 x i8] zeroinitializer }, align 32
@lima_mmu_init._entry_ptr.7 = internal global ptr @lima_mmu_init._entry.5, section ".printk_index", align 4
@lima_mmu_switch_vm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mmu command %x timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lima_mmu_switch_vm\00", [45 x i8] zeroinitializer }, align 32
@lima_mmu_switch_vm._entry_ptr = internal global ptr @lima_mmu_switch_vm._entry, section ".printk_index", align 4
@lima_mmu_switch_vm._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lima_mmu_switch_vm._entry_ptr.11 = internal global ptr @lima_mmu_switch_vm._entry.10, section ".printk_index", align 4
@lima_mmu_page_fault_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 155, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmu resume\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lima_mmu_page_fault_resume\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lima_mmu_page_fault_resume._entry_ptr = internal global ptr @lima_mmu_page_fault_resume._entry, section ".printk_index", align 4
@lima_mmu_page_fault_resume._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.13, ptr @.str.2, i32 160, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lima_mmu_page_fault_resume._entry_ptr.16 = internal global ptr @lima_mmu_page_fault_resume._entry.15, section ".printk_index", align 4
@lima_mmu_page_fault_resume._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.13, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lima_mmu_page_fault_resume._entry_ptr.18 = internal global ptr @lima_mmu_page_fault_resume._entry.17, section ".printk_index", align 4
@lima_mmu_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.19, ptr @.str.2, i32 70, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lima_mmu_hw_init\00", [47 x i8] zeroinitializer }, align 32
@lima_mmu_hw_init._entry_ptr = internal global ptr @lima_mmu_hw_init._entry, section ".printk_index", align 4
@lima_mmu_hw_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.19, ptr @.str.2, i32 79, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lima_mmu_hw_init._entry_ptr.21 = internal global ptr @lima_mmu_hw_init._entry.20, section ".printk_index", align 4
@lima_mmu_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 46, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mmu page fault at 0x%x from bus id %d of type %s on %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lima_mmu_irq_handler\00", [43 x i8] zeroinitializer }, align 32
@lima_mmu_irq_handler._entry_ptr = internal global ptr @lima_mmu_irq_handler._entry, section ".printk_index", align 4
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@lima_mmu_irq_handler._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmu %s irq bus error\0A\00", [42 x i8] zeroinitializer }, align 32
@lima_mmu_irq_handler._entry_ptr.28 = internal global ptr @lima_mmu_irq_handler._entry.26, section ".printk_index", align 4
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 105, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 112, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 134, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 143, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 155, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 159, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 163, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 69, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 77, i32 9 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 43, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [35 x i8] c"../drivers/gpu/drm/lima/lima_mmu.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 50, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @lima_mmu_hw_init._entry, ptr @lima_mmu_hw_init._entry.20, ptr @lima_mmu_hw_init._entry_ptr, ptr @lima_mmu_hw_init._entry_ptr.21, ptr @lima_mmu_init._entry, ptr @lima_mmu_init._entry.5, ptr @lima_mmu_init._entry_ptr, ptr @lima_mmu_init._entry_ptr.7, ptr @lima_mmu_irq_handler._entry, ptr @lima_mmu_irq_handler._entry.26, ptr @lima_mmu_irq_handler._entry_ptr, ptr @lima_mmu_irq_handler._entry_ptr.28, ptr @lima_mmu_page_fault_resume._entry, ptr @lima_mmu_page_fault_resume._entry.15, ptr @lima_mmu_page_fault_resume._entry.17, ptr @lima_mmu_page_fault_resume._entry_ptr, ptr @lima_mmu_page_fault_resume._entry_ptr.16, ptr @lima_mmu_page_fault_resume._entry_ptr.18, ptr @lima_mmu_switch_vm._entry, ptr @lima_mmu_switch_vm._entry.10, ptr @lima_mmu_switch_vm._entry_ptr, ptr @lima_mmu_switch_vm._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_mmu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_mmu_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_mmu_switch_vm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_mmu_switch_vm._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_mmu_page_fault_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_mmu_page_fault_resume._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_mmu_page_fault_resume._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_mmu_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_mmu_hw_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_mmu_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_mmu_irq_handler._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_mmu_resume(ptr nocapture noundef readonly %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp = icmp eq i32 %1, 25
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @lima_mmu_hw_init(ptr noundef %ip)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lima_mmu_hw_init(ptr nocapture noundef readonly %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 100663296) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 100663296) #5, !srcloc !60
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 100000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %6 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp21 = icmp eq i32 %8, 0
  br i1 %cmp21, label %for.cond.do.body52_crit_edge, label %land.lhs.true

for.cond.do.body52_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body52

land.lhs.true:                                    ; preds = %for.cond
  %call24 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %if.then27, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then27:                                        ; preds = %land.lhs.true
  %9 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iomem, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %phi.cmp = icmp eq i32 %11, 0
  br i1 %phi.cmp, label %if.then27.do.body52_crit_edge, label %if.then27.cleanup.sink.split_crit_edge

if.then27.cleanup.sink.split_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then27.do.body52_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body52

do.body52:                                        ; preds = %if.then27.do.body52_crit_edge, %for.cond.do.body52_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem, align 4
  %add.ptr56 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 50331648) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %empty_vm = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %empty_vm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %empty_vm, align 8
  %dma = getelementptr inbounds %struct.lima_vm, ptr %15, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iomem, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomem, align 4
  %add.ptr67 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 0) #5, !srcloc !60
  %call71 = tail call i64 @ktime_get() #5
  %add.i155 = add i64 %call71, 100000
  br label %for.cond85

for.cond85:                                       ; preds = %land.lhs.true97.for.cond85_crit_edge, %do.body52
  %23 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iomem, align 4
  %add.ptr89 = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #5, !srcloc !62
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool93.not = icmp eq i32 %and, 0
  br i1 %tobool93.not, label %land.lhs.true97, label %for.cond85.for.end115_crit_edge

for.cond85.for.end115_crit_edge:                  ; preds = %for.cond85
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end115

land.lhs.true97:                                  ; preds = %for.cond85
  %call98 = tail call i64 @ktime_get() #5
  %cmp3.i157 = icmp sgt i64 %call98, %add.i155
  br i1 %cmp3.i157, label %if.then101, label %land.lhs.true97.for.cond85_crit_edge

land.lhs.true97.for.cond85_crit_edge:             ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond85

if.then101:                                       ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iomem, align 4
  %add.ptr105 = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #5, !srcloc !62
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  br label %for.end115

for.end115:                                       ; preds = %if.then101, %for.cond85.for.end115_crit_edge
  %v.1 = phi i32 [ %30, %if.then101 ], [ %26, %for.cond85.for.end115_crit_edge ]
  %and117 = and i32 %v.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %for.end115.cleanup.sink.split_crit_edge, label %for.end115.cleanup_crit_edge

for.end115.cleanup_crit_edge:                     ; preds = %for.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end115.cleanup.sink.split_crit_edge:          ; preds = %for.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end115.cleanup.sink.split_crit_edge, %if.then27.cleanup.sink.split_crit_edge
  %.sink165 = phi i32 [ 6, %if.then27.cleanup.sink.split_crit_edge ], [ 0, %for.end115.cleanup.sink.split_crit_edge ]
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.8, i32 noundef %.sink165) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end115.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end115.cleanup_crit_edge ], [ -110, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lima_mmu_suspend(ptr nocapture noundef %ip) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_mmu_init(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %id = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %3)
  %cmp = icmp eq i32 %3, 25
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  %4 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -1095041334) #5, !srcloc !60
  %6 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 11599562, i32 %8)
  %cmp5.not = icmp eq i32 %8, 11599562
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  br i1 %cmp5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call ptr @lima_ip_name(ptr noundef %ip) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %call11) #8
  br label %cleanup

if.end12:                                         ; preds = %do.body
  %irq = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 4
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call14 = tail call ptr @lima_ip_name(ptr noundef %ip) #5
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %10, i32 noundef %12, ptr noundef nonnull @lima_mmu_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %call14, ptr noundef %ip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %call21 = tail call ptr @lima_ip_name(ptr noundef %ip) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef %call21) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call fastcc i32 @lima_mmu_hw_init(ptr noundef %ip)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end19, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end9 ], [ %call.i, %do.end19 ], [ %call23, %if.end22 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_ip_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_mmu_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !62
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end17_crit_edge, label %if.then4

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !62
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %shr = lshr i32 %5, 6
  %and13 = and i32 %shr, 31
  %and14 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond = select i1 %tobool15.not, ptr @.str.25, ptr @.str.24
  %call16 = tail call ptr @lima_ip_name(ptr noundef %data) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.22, i32 noundef %9, i32 noundef %and13, ptr noundef nonnull %cond, ptr noundef %call16) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then4, %if.end.if.end17_crit_edge
  %and18 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.do.body27_crit_edge, label %do.end23

if.end17.do.body27_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body27

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call25 = tail call ptr @lima_ip_name(ptr noundef %data) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.27, ptr noundef %call25) #8
  br label %do.body27

do.body27:                                        ; preds = %do.end23, %if.end17.do.body27_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem, align 4
  %add.ptr31 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem, align 4
  %add.ptr36 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %4) #5, !srcloc !60
  %pipe37 = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 12
  %id = getelementptr inbounds %struct.lima_ip, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp ne i32 %19, 1
  %cond38 = zext i1 %cmp to i32
  %add.ptr39 = getelementptr %struct.lima_sched_pipe, ptr %pipe37, i32 %cond38
  %error.i = getelementptr %struct.lima_sched_pipe, ptr %pipe37, i32 %cond38, i32 16
  %20 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %error.i, align 4
  %task_mmu_error.i = getelementptr %struct.lima_sched_pipe, ptr %pipe37, i32 %cond38, i32 24
  %21 = ptrtoint ptr %task_mmu_error.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task_mmu_error.i, align 4
  tail call void %22(ptr noundef %add.ptr39) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body27 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lima_mmu_fini(ptr nocapture noundef %ip) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_mmu_flush_tlb(ptr nocapture noundef readonly %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #5, !srcloc !60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_mmu_switch_vm(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #5, !srcloc !60
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 100000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %4 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem, align 4
  %add.ptr13 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !62
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call19 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call19, %add.i
  br i1 %cmp3.i, label %if.then22, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 4
  %add.ptr26 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #5, !srcloc !62
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  br label %for.end

for.end:                                          ; preds = %if.then22, %for.cond.for.end_crit_edge
  %v.0 = phi i32 [ %11, %if.then22 ], [ %7, %for.cond.for.end_crit_edge ]
  %and35 = and i32 %v.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.end41, label %for.end.if.end43_crit_edge

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef 2) #8
  br label %if.end43

if.end43:                                         ; preds = %do.end41, %for.end.if.end43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %dma = getelementptr inbounds %struct.lima_vm, ptr %vm, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iomem, align 4
  %add.ptr54 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 67108864) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomem, align 4
  %add.ptr60 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 50331648) #5, !srcloc !60
  %call64 = tail call i64 @ktime_get() #5
  %add.i144 = add i64 %call64, 100000
  br label %for.cond78

for.cond78:                                       ; preds = %land.lhs.true91.for.cond78_crit_edge, %if.end43
  %23 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iomem, align 4
  %add.ptr82 = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %26 = and i32 %25, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool87.not = icmp eq i32 %26, 0
  br i1 %tobool87.not, label %for.cond78.if.end120_crit_edge, label %land.lhs.true91

for.cond78.if.end120_crit_edge:                   ; preds = %for.cond78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

land.lhs.true91:                                  ; preds = %for.cond78
  %call92 = tail call i64 @ktime_get() #5
  %cmp3.i146 = icmp sgt i64 %call92, %add.i144
  br i1 %cmp3.i146, label %for.end109, label %land.lhs.true91.for.cond78_crit_edge

land.lhs.true91.for.cond78_crit_edge:             ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond78

for.end109:                                       ; preds = %land.lhs.true91
  %27 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iomem, align 4
  %add.ptr99 = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %30 = and i32 %29, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %phi.cmp = icmp eq i32 %30, 0
  br i1 %phi.cmp, label %for.end109.if.end120_crit_edge, label %do.end118

for.end109.if.end120_crit_edge:                   ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

do.end118:                                        ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.8, i32 noundef 3) #8
  br label %if.end120

if.end120:                                        ; preds = %do.end118, %for.end109.if.end120_crit_edge, %for.cond78.if.end120_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_mmu_page_fault_resume(ptr nocapture noundef readonly %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end144_crit_edge, label %do.end

entry.if.end144_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

do.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -1095041334) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem, align 4
  %add.ptr18 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 100663296) #5, !srcloc !60
  %call19 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call19, 100000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %do.end
  %14 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp38 = icmp eq i32 %16, 0
  br i1 %cmp38, label %for.cond.if.end65_crit_edge, label %land.lhs.true

for.cond.if.end65_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

land.lhs.true:                                    ; preds = %for.cond
  %call42 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call42, %add.i
  br i1 %cmp3.i, label %if.then45, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then45:                                        ; preds = %land.lhs.true
  %17 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %phi.cmp = icmp eq i32 %19, 0
  br i1 %phi.cmp, label %if.then45.if.end65_crit_edge, label %do.end63

if.then45.if.end65_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

do.end63:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.8, i32 noundef 6) #8
  br label %if.end65

if.end65:                                         ; preds = %do.end63, %if.then45.if.end65_crit_edge, %for.cond.if.end65_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iomem, align 4
  %add.ptr71 = getelementptr i8, ptr %23, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 50331648) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %empty_vm = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %empty_vm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %empty_vm, align 8
  %dma = getelementptr inbounds %struct.lima_vm, ptr %25, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iomem, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iomem, align 4
  %add.ptr82 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 0) #5, !srcloc !60
  %call86 = tail call i64 @ktime_get() #5
  %add.i173 = add i64 %call86, 100000
  br label %for.cond100

for.cond100:                                      ; preds = %land.lhs.true113.for.cond100_crit_edge, %if.end65
  %33 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iomem, align 4
  %add.ptr104 = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #5, !srcloc !62
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  %and108 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %land.lhs.true113, label %for.cond100.for.end131_crit_edge

for.cond100.for.end131_crit_edge:                 ; preds = %for.cond100
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end131

land.lhs.true113:                                 ; preds = %for.cond100
  %call114 = tail call i64 @ktime_get() #5
  %cmp3.i175 = icmp sgt i64 %call114, %add.i173
  br i1 %cmp3.i175, label %if.then117, label %land.lhs.true113.for.cond100_crit_edge

land.lhs.true113.for.cond100_crit_edge:           ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond100

if.then117:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iomem, align 4
  %add.ptr121 = getelementptr i8, ptr %38, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121) #5, !srcloc !62
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  br label %for.end131

for.end131:                                       ; preds = %if.then117, %for.cond100.for.end131_crit_edge
  %v.1 = phi i32 [ %40, %if.then117 ], [ %36, %for.cond100.for.end131_crit_edge ]
  %and133 = and i32 %v.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %do.end140, label %for.end131.if.end144_crit_edge

for.end131.if.end144_crit_edge:                   ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

do.end140:                                        ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.8, i32 noundef 0) #8
  br label %if.end144

if.end144:                                        ; preds = %do.end140, %for.end131.if.end144_crit_edge, %entry.if.end144_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !45, !46, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/lima/lima_mmu.c", i32 105, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lima_mmu_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lima_mmu_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/lima/lima_mmu.c", i32 112, i32 3}
!10 = !{ptr @lima_mmu_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @lima_mmu_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/lima/lima_mmu.c", i32 134, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @lima_mmu_switch_vm._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @lima_mmu_switch_vm._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @lima_mmu_switch_vm._entry.10, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/lima/lima_mmu.c", i32 143, i32 2}
!19 = !{ptr @lima_mmu_switch_vm._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/lima/lima_mmu.c", i32 155, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lima_mmu_page_fault_resume._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @lima_mmu_page_fault_resume._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @lima_mmu_page_fault_resume._entry.15, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/lima/lima_mmu.c", i32 159, i32 3}
!28 = !{ptr @lima_mmu_page_fault_resume._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @lima_mmu_page_fault_resume._entry.17, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/lima/lima_mmu.c", i32 163, i32 3}
!31 = !{ptr @lima_mmu_page_fault_resume._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/lima/lima_mmu.c", i32 69, i32 8}
!34 = !{ptr @lima_mmu_hw_init._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lima_mmu_hw_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @lima_mmu_hw_init._entry.20, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/lima/lima_mmu.c", i32 77, i32 9}
!38 = !{ptr @lima_mmu_hw_init._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/lima/lima_mmu.c", i32 43, i32 3}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @lima_mmu_irq_handler._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @lima_mmu_irq_handler._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/lima/lima_mmu.c", i32 50, i32 3}
!48 = !{ptr @lima_mmu_irq_handler._entry.26, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @lima_mmu_irq_handler._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2154178176}
!60 = !{i64 4200385}
!61 = !{i64 2154178957}
!62 = !{i64 4200803}
!63 = !{i64 2154180698}
!64 = !{i64 2154181204}
!65 = !{i64 2154183347}
!66 = !{i64 2154183984}
!67 = !{i64 2154184923}
!68 = !{i64 2154186764}
!69 = !{i64 2154187270}
!70 = !{i64 2154189155}
!71 = !{i64 2154189879}
!72 = !{i64 2154172479}
!73 = !{i64 2154173088}
!74 = !{i64 2154177282}
!75 = !{i64 2154177721}
!76 = !{i64 2154193492}
!77 = !{i64 2154194380}
!78 = !{i64 2154196222}
!79 = !{i64 2154196728}
!80 = !{i64 2154198614}
!81 = !{i64 2154199081}
!82 = !{i64 2154199973}
!83 = !{i64 2154201831}
!84 = !{i64 2154202337}
!85 = !{i64 2154204473}
!86 = !{i64 2154206304}
!87 = !{i64 2154206751}
!88 = !{i64 2154207550}
!89 = !{i64 2154209292}
!90 = !{i64 2154209798}
!91 = !{i64 2154211942}
!92 = !{i64 2154212579}
!93 = !{i64 2154213518}
!94 = !{i64 2154215360}
!95 = !{i64 2154215866}
