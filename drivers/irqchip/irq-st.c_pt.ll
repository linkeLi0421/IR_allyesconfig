; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-st.c_pt.bc'
source_filename = "../drivers/irqchip/irq-st.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.st_irq_syscfg = type { ptr, i32, i32, i8 }

@__initcall__kmod_irq_st__183_203_st_irq_syscfg_init1 = internal global ptr @st_irq_syscfg_init, section ".initcall1.init", align 4
@st_irq_syscfg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @st_irq_syscfg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_irq_syscfg_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_irq_syscfg_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st_irq_syscfg\00", [18 x i8] zeroinitializer }, align 32
@st_irq_syscfg_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih415-irq-syscfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 168 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih416-irq-syscfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2172 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-irq-syscfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 408 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stid127-irq-syscfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 136 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@st_irq_syscfg_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @st_irq_syscfg_resume, ptr null, ptr @st_irq_syscfg_resume, ptr null, ptr @st_irq_syscfg_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscfg\00", [22 x i8] zeroinitializer }, align 32
@st_irq_syscfg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"syscfg phandle missing\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st_irq_syscfg_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/irqchip/irq-st.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_irq_syscfg_probe._entry_ptr = internal global ptr @st_irq_syscfg_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,irq-device\00", [18 x i8] zeroinitializer }, align 32
@st_irq_syscfg_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 121, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"st,enable-irq-device must have 2 elems\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st_irq_syscfg_enable\00", [43 x i8] zeroinitializer }, align 32
@st_irq_syscfg_enable._entry_ptr = internal global ptr @st_irq_syscfg_enable._entry, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,fiq-device\00", [18 x i8] zeroinitializer }, align 32
@st_irq_syscfg_enable._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.4, i32 127, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"st,enable-fiq-device must have 2 elems\0A\00", [56 x i8] zeroinitializer }, align 32
@st_irq_syscfg_enable._entry_ptr.13 = internal global ptr @st_irq_syscfg_enable._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,invert-ext\00", [18 x i8] zeroinitializer }, align 32
@st_irq_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 100, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unrecognised device %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st_irq_xlate\00", [19 x i8] zeroinitializer }, align 32
@st_irq_xlate._entry_ptr = internal global ptr @st_irq_xlate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 4294967295]
@__sancov_gen_cov_switch_values.17 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 4294967295]
@__sancov_gen_cov_switch_values.18 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 4294967295]
@__sancov_gen_cov_switch_values.19 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 4294967295]
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"st_irq_syscfg_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 190, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 192, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"st_irq_syscfg_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 46, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"st_irq_syscfg_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 188, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 169, i32 54 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 171, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 119, i32 45 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 121, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 125, i32 45 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 127, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 146, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [28 x i8] c"../drivers/irqchip/irq-st.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 100, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__initcall__kmod_irq_st__183_203_st_irq_syscfg_init1, ptr @st_irq_syscfg_enable._entry, ptr @st_irq_syscfg_enable._entry.11, ptr @st_irq_syscfg_enable._entry_ptr, ptr @st_irq_syscfg_enable._entry_ptr.13, ptr @st_irq_syscfg_probe._entry, ptr @st_irq_syscfg_probe._entry_ptr, ptr @st_irq_xlate._entry, ptr @st_irq_xlate._entry_ptr, ptr @st_irq_syscfg_driver, ptr @.str, ptr @st_irq_syscfg_match, ptr @st_irq_syscfg_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_irq_syscfg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_irq_syscfg_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_irq_syscfg_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_irq_syscfg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_irq_syscfg_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_irq_syscfg_enable._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_irq_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_irq_syscfg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_irq_syscfg_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_irq_syscfg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %device.i = alloca i32, align 4
  %invert.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_match_device(ptr noundef nonnull @st_irq_syscfg_match, ptr noundef %dev) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  %syscfg = getelementptr inbounds %struct.st_irq_syscfg, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %syscfg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %syscfg, align 4
  %call7 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i, align 4
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device.i) #5
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %device.i, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %invert.i) #5
  %14 = ptrtoint ptr %invert.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %invert.i, align 4, !annotation !49
  %call.i.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %12, ptr noundef nonnull @.str.7, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %st_irq_syscfg_enable.exit

if.end.i:                                         ; preds = %if.end14
  %call.i52.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %12, ptr noundef nonnull @.str.10, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i52.i)
  %cmp5.not.i = icmp eq i32 %call.i52.i, 2
  br i1 %cmp5.not.i, label %for.cond.preheader.i, label %do.end9.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %call13.i = call i32 @of_property_read_u32_index(ptr noundef %12, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %device.i) #5
  %15 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device.i, align 4
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i, align 4
  %19 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %for.cond.preheader.i.st_irq_xlate.exit.i_crit_edge [
    i32 0, label %for.cond.preheader.i.sw.epilog.i.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb4.i.i
    i32 3, label %sw.bb7.i.i
    i32 4, label %sw.bb10.i.i
    i32 5, label %sw.bb13.i.i
    i32 6, label %sw.bb16.i.i
    i32 7, label %sw.bb19.i.i
    i32 -1, label %for.cond.preheader.i.if.end16.i_crit_edge
  ]

for.cond.preheader.i.if.end16.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

for.cond.preheader.i.sw.epilog.i.i_crit_edge:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

for.cond.preheader.i.st_irq_xlate.exit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_irq_xlate.exit.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %st_irq_syscfg_enable.exit

sw.bb1.i.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb7.i.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb13.i.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb16.i.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb19.i.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb19.i.i, %sw.bb16.i.i, %sw.bb13.i.i, %sw.bb10.i.i, %sw.bb7.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %for.cond.preheader.i.sw.epilog.i.i_crit_edge
  %.sink42.i.i = phi i32 [ 16, %sw.bb19.i.i ], [ 8, %sw.bb16.i.i ], [ 4, %sw.bb13.i.i ], [ 2, %sw.bb10.i.i ], [ 1, %sw.bb7.i.i ], [ 128, %sw.bb4.i.i ], [ 64, %sw.bb1.i.i ], [ 32, %for.cond.preheader.i.sw.epilog.i.i_crit_edge ]
  %config20.i.i = getelementptr inbounds %struct.st_irq_syscfg, ptr %18, i32 0, i32 2
  %20 = ptrtoint ptr %config20.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %config20.i.i, align 4
  %cond.i.i = shl nuw nsw i32 %16, 14
  %or21.i.i = or i32 %.sink42.i.i, %cond.i.i
  %or28.i.i = or i32 %or21.i.i, %21
  store i32 %or28.i.i, ptr %config20.i.i, align 4
  br label %if.end16.i

st_irq_xlate.exit.i:                              ; preds = %for.inc.i.st_irq_xlate.exit.i_crit_edge, %for.cond.preheader.i.st_irq_xlate.exit.i_crit_edge
  %.lcssa.i = phi i32 [ %16, %for.cond.preheader.i.st_irq_xlate.exit.i_crit_edge ], [ %30, %for.inc.i.st_irq_xlate.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %.lcssa.i) #8
  br label %st_irq_syscfg_enable.exit

if.end16.i:                                       ; preds = %sw.epilog.i.i, %for.cond.preheader.i.if.end16.i_crit_edge
  %call17.i = call i32 @of_property_read_u32_index(ptr noundef %12, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull %device.i) #5
  %22 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %device.i, align 4
  %24 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i, align 4
  %26 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %23, label %if.end16.i.st_irq_xlate.exit73.i_crit_edge [
    i32 0, label %if.end16.i.sw.epilog.i71.i_crit_edge
    i32 1, label %sw.bb1.i54.i
    i32 2, label %sw.bb4.i55.i
    i32 3, label %sw.bb7.i56.i
    i32 4, label %sw.bb10.i57.i
    i32 5, label %sw.bb13.i58.i
    i32 6, label %sw.bb16.i59.i
    i32 7, label %sw.bb19.i60.i
    i32 -1, label %if.end16.i.for.inc.i_crit_edge
  ]

if.end16.i.for.inc.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end16.i.sw.epilog.i71.i_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.i

if.end16.i.st_irq_xlate.exit73.i_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_irq_xlate.exit73.i

sw.bb1.i54.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.i

sw.bb4.i55.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.i

sw.bb7.i56.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.i

sw.bb10.i57.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.i

sw.bb13.i58.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.i

sw.bb16.i59.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.i

sw.bb19.i60.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.i

sw.epilog.i71.i:                                  ; preds = %sw.bb19.i60.i, %sw.bb16.i59.i, %sw.bb13.i58.i, %sw.bb10.i57.i, %sw.bb7.i56.i, %sw.bb4.i55.i, %sw.bb1.i54.i, %if.end16.i.sw.epilog.i71.i_crit_edge
  %.sink42.i63.i = phi i32 [ 16, %sw.bb19.i60.i ], [ 8, %sw.bb16.i59.i ], [ 4, %sw.bb13.i58.i ], [ 2, %sw.bb10.i57.i ], [ 1, %sw.bb7.i56.i ], [ 128, %sw.bb4.i55.i ], [ 64, %sw.bb1.i54.i ], [ 32, %if.end16.i.sw.epilog.i71.i_crit_edge ]
  %config20.i64.i = getelementptr inbounds %struct.st_irq_syscfg, ptr %25, i32 0, i32 2
  %27 = ptrtoint ptr %config20.i64.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %config20.i64.i, align 4
  %cond.i68.i = shl nuw nsw i32 %23, 8
  %or21.i65.i = or i32 %.sink42.i63.i, %cond.i68.i
  %or28.i70.i = or i32 %or21.i65.i, %28
  store i32 %or28.i70.i, ptr %config20.i64.i, align 4
  br label %for.inc.i

st_irq_xlate.exit73.i:                            ; preds = %if.end16.1.i.st_irq_xlate.exit73.i_crit_edge, %if.end16.i.st_irq_xlate.exit73.i_crit_edge
  %.lcssa85.i = phi i32 [ %23, %if.end16.i.st_irq_xlate.exit73.i_crit_edge ], [ %37, %if.end16.1.i.st_irq_xlate.exit73.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %.lcssa85.i) #8
  br label %st_irq_syscfg_enable.exit

for.inc.i:                                        ; preds = %sw.epilog.i71.i, %if.end16.i.for.inc.i_crit_edge
  %call13.1.i = call i32 @of_property_read_u32_index(ptr noundef %12, ptr noundef nonnull @.str.7, i32 noundef 1, ptr noundef nonnull %device.i) #5
  %29 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %device.i, align 4
  %31 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i, align 4
  %33 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %30, label %for.inc.i.st_irq_xlate.exit.i_crit_edge [
    i32 0, label %for.inc.i.sw.epilog.i.1.i_crit_edge
    i32 1, label %sw.bb1.i.1.i
    i32 2, label %sw.bb4.i.1.i
    i32 3, label %sw.bb7.i.1.i
    i32 4, label %sw.bb10.i.1.i
    i32 5, label %sw.bb13.i.1.i
    i32 6, label %sw.bb16.i.1.i
    i32 7, label %sw.bb19.i.1.i
    i32 -1, label %for.inc.i.if.end16.1.i_crit_edge
  ]

for.inc.i.if.end16.1.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.1.i

for.inc.i.sw.epilog.i.1.i_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.1.i

for.inc.i.st_irq_xlate.exit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_irq_xlate.exit.i

sw.bb19.i.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.1.i

sw.bb16.i.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.1.i

sw.bb13.i.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.1.i

sw.bb10.i.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.1.i

sw.bb7.i.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.1.i

sw.bb4.i.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.1.i

sw.bb1.i.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.1.i

sw.epilog.i.1.i:                                  ; preds = %sw.bb1.i.1.i, %sw.bb4.i.1.i, %sw.bb7.i.1.i, %sw.bb10.i.1.i, %sw.bb13.i.1.i, %sw.bb16.i.1.i, %sw.bb19.i.1.i, %for.inc.i.sw.epilog.i.1.i_crit_edge
  %.sink42.i.1.i = phi i32 [ 16, %sw.bb19.i.1.i ], [ 8, %sw.bb16.i.1.i ], [ 4, %sw.bb13.i.1.i ], [ 2, %sw.bb10.i.1.i ], [ 1, %sw.bb7.i.1.i ], [ 128, %sw.bb4.i.1.i ], [ 64, %sw.bb1.i.1.i ], [ 32, %for.inc.i.sw.epilog.i.1.i_crit_edge ]
  %config20.i.1.i = getelementptr inbounds %struct.st_irq_syscfg, ptr %32, i32 0, i32 2
  %34 = ptrtoint ptr %config20.i.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %config20.i.1.i, align 4
  %cond.i.1.i = shl nuw nsw i32 %30, 17
  %or21.i.1.i = or i32 %.sink42.i.1.i, %cond.i.1.i
  %or28.i.1.i = or i32 %or21.i.1.i, %35
  store i32 %or28.i.1.i, ptr %config20.i.1.i, align 4
  br label %if.end16.1.i

if.end16.1.i:                                     ; preds = %sw.epilog.i.1.i, %for.inc.i.if.end16.1.i_crit_edge
  %call17.1.i = call i32 @of_property_read_u32_index(ptr noundef %12, ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef nonnull %device.i) #5
  %36 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %device.i, align 4
  %38 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i, align 4
  %40 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %37, label %if.end16.1.i.st_irq_xlate.exit73.i_crit_edge [
    i32 0, label %if.end16.1.i.sw.epilog.i71.1.i_crit_edge
    i32 1, label %sw.bb1.i54.1.i
    i32 2, label %sw.bb4.i55.1.i
    i32 3, label %sw.bb7.i56.1.i
    i32 4, label %sw.bb10.i57.1.i
    i32 5, label %sw.bb13.i58.1.i
    i32 6, label %sw.bb16.i59.1.i
    i32 7, label %sw.bb19.i60.1.i
    i32 -1, label %if.end16.1.i.for.inc.1.i_crit_edge
  ]

if.end16.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.end16.1.i.sw.epilog.i71.1.i_crit_edge:         ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.1.i

if.end16.1.i.st_irq_xlate.exit73.i_crit_edge:     ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_irq_xlate.exit73.i

sw.bb19.i60.1.i:                                  ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.1.i

sw.bb16.i59.1.i:                                  ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.1.i

sw.bb13.i58.1.i:                                  ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.1.i

sw.bb10.i57.1.i:                                  ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.1.i

sw.bb7.i56.1.i:                                   ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.1.i

sw.bb4.i55.1.i:                                   ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.1.i

sw.bb1.i54.1.i:                                   ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i71.1.i

sw.epilog.i71.1.i:                                ; preds = %sw.bb1.i54.1.i, %sw.bb4.i55.1.i, %sw.bb7.i56.1.i, %sw.bb10.i57.1.i, %sw.bb13.i58.1.i, %sw.bb16.i59.1.i, %sw.bb19.i60.1.i, %if.end16.1.i.sw.epilog.i71.1.i_crit_edge
  %.sink42.i63.1.i = phi i32 [ 16, %sw.bb19.i60.1.i ], [ 8, %sw.bb16.i59.1.i ], [ 4, %sw.bb13.i58.1.i ], [ 2, %sw.bb10.i57.1.i ], [ 1, %sw.bb7.i56.1.i ], [ 128, %sw.bb4.i55.1.i ], [ 64, %sw.bb1.i54.1.i ], [ 32, %if.end16.1.i.sw.epilog.i71.1.i_crit_edge ]
  %config20.i64.1.i = getelementptr inbounds %struct.st_irq_syscfg, ptr %39, i32 0, i32 2
  %41 = ptrtoint ptr %config20.i64.1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %config20.i64.1.i, align 4
  %cond.i68.1.i = shl nuw nsw i32 %37, 11
  %or21.i65.1.i = or i32 %.sink42.i63.1.i, %cond.i68.1.i
  %or28.i70.1.i = or i32 %or21.i65.1.i, %42
  store i32 %or28.i70.1.i, ptr %config20.i64.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %sw.epilog.i71.1.i, %if.end16.1.i.for.inc.1.i_crit_edge
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.14, ptr noundef nonnull %invert.i, i32 noundef 1, i32 noundef 0) #5
  %43 = ptrtoint ptr %invert.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %invert.i, align 4
  %shl.i = shl i32 %44, 20
  %config.i = getelementptr inbounds %struct.st_irq_syscfg, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %config.i, align 4
  %or.i = or i32 %46, %shl.i
  store i32 %or.i, ptr %config.i, align 4
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %49 = ptrtoint ptr %syscfg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %syscfg, align 4
  %call.i74.i = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef %50, i32 noundef 2097151, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %st_irq_syscfg_enable.exit

st_irq_syscfg_enable.exit:                        ; preds = %for.inc.1.i, %st_irq_xlate.exit73.i, %st_irq_xlate.exit.i, %do.end9.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -22, %do.end9.i ], [ %call.i74.i, %for.inc.1.i ], [ -22, %st_irq_xlate.exit.i ], [ -22, %st_irq_xlate.exit73.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %invert.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device.i) #5
  br label %cleanup

cleanup:                                          ; preds = %st_irq_syscfg_enable.exit, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end ], [ %retval.0.i, %st_irq_syscfg_enable.exit ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_irq_syscfg_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %syscfg = getelementptr inbounds %struct.st_irq_syscfg, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %syscfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %syscfg, align 4
  %config = getelementptr inbounds %struct.st_irq_syscfg, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef 2097151, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_irq_st__183_203_st_irq_syscfg_init1, !1, !"__initcall__kmod_irq_st__183_203_st_irq_syscfg_init1", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-st.c", i32 203, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-st.c", i32 192, i32 11}
!4 = !{ptr @st_irq_syscfg_driver, !5, !"st_irq_syscfg_driver", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-st.c", i32 190, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-st.c", i32 169, i32 54}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-st.c", i32 171, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @st_irq_syscfg_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @st_irq_syscfg_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-st.c", i32 119, i32 45}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-st.c", i32 121, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @st_irq_syscfg_enable._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @st_irq_syscfg_enable._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-st.c", i32 125, i32 45}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/irqchip/irq-st.c", i32 127, i32 3}
!27 = !{ptr @st_irq_syscfg_enable._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @st_irq_syscfg_enable._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/irqchip/irq-st.c", i32 146, i32 27}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/irqchip/irq-st.c", i32 100, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @st_irq_xlate._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @st_irq_xlate._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @st_irq_syscfg_match, !37, !"st_irq_syscfg_match", i1 false, i1 false}
!37 = !{!"../drivers/irqchip/irq-st.c", i32 46, i32 34}
!38 = !{ptr @st_irq_syscfg_pm_ops, !39, !"st_irq_syscfg_pm_ops", i1 false, i1 false}
!39 = !{!"../drivers/irqchip/irq-st.c", i32 188, i32 8}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
