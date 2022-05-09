; ModuleID = '/llk/IR_all_yes/drivers/soc/renesas/rcar-gen4-sysc.c_pt.bc'
source_filename = "../drivers/soc/renesas/rcar-gen4-sysc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rcar_gen4_sysc_info = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.dev_power_governor = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rcar_gen4_pm_domains = type { %struct.genpd_onecell_data, [65 x ptr] }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.rcar_gen4_sysc_area = type { ptr, i8, i32, i32 }
%struct.rcar_gen4_sysc_pd = type { %struct.generic_pm_domain, i8, i32, [0 x i8] }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.67 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.67 = type { %struct.mutex }

@__initcall__kmod_rcar_gen4_sysc__235_376_rcar_gen4_sysc_pd_initearly = internal global ptr @rcar_gen4_sysc_pd_init, section ".initcallearly.init", align 4
@rcar_gen4_sysc_matches = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a779a0-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a779a0_sysc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a779f0-sysc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a779f0_sysc_info }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@rcar_gen4_sysc_pd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%pOF: Cannot map regs\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcar_gen4_sysc_pd_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/soc/renesas/rcar-gen4-sysc.c\00", [59 x i8] zeroinitializer }, align 32
@rcar_gen4_sysc_pd_init._entry_ptr = internal global ptr @rcar_gen4_sysc_pd_init._entry, section ".printk_index", align 4
@rcar_gen4_sysc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcar_gen4_sysc_onecell_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcar_gen4_sysc_pd_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014Failed to add PM subdomain %s to parent %u\0A\00", [50 x i8] zeroinitializer }, align 32
@rcar_gen4_sysc_pd_init._entry_ptr.5 = internal global ptr @rcar_gen4_sysc_pd_init._entry.3, section ".printk_index", align 4
@r8a779a0_sysc_info = external dso_local constant %struct.rcar_gen4_sysc_info, align 4
@r8a779f0_sysc_info = external dso_local constant %struct.rcar_gen4_sysc_info, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_gen4_sysc\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_gen4_sysc_pd_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PM domain %s contains %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPU\00", [28 x i8] zeroinitializer }, align 32
@rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SCU\00", [28 x i8] zeroinitializer }, align 32
@rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.11, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Not touching %s\0A\00", [43 x i8] zeroinitializer }, align 32
@rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.12, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: %s is already powered\0A\00", [37 x i8] zeroinitializer }, align 32
@simple_qos_governor = external dso_local global %struct.dev_power_governor, align 4
@rcar_gen4_sysc_pd_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Failed to init PM domain %s: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rcar_gen4_sysc_pd_setup._entry_ptr = internal global ptr @rcar_gen4_sysc_pd_setup._entry, section ".printk_index", align 4
@rcar_gen4_sysc_pd_power_off.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rcar_gen4_sysc_pd_power_off\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@rcar_gen4_sysc_pd_power_on.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.2, ptr @.str.15, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rcar_gen4_sysc_pd_power_on\00", [37 x i8] zeroinitializer }, align 32
@rcar_gen4_sysc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rcar_gen4_sysc_power.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcar_gen4_sysc_power\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sysc power %s domain %d: %08x -> %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcar_gen4_sysc_lock\00", [44 x i8] zeroinitializer }, align 32
@clear_irq_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013\0A %s : Can not clear IRQ flags in SYSCISCR\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clear_irq_flags\00", [16 x i8] zeroinitializer }, align 32
@clear_irq_flags._entry_ptr = internal global ptr @clear_irq_flags._entry, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 313, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"rcar_gen4_sysc_base\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 64, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"rcar_gen4_sysc_onecell_data\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 293, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 364, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 230, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 238, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 259, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 264, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 273, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 207, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 215, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"rcar_gen4_sysc_lock\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 174, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 65, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [40 x i8] c"../drivers/soc/renesas/rcar-gen4-sysc.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 102, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__initcall__kmod_rcar_gen4_sysc__235_376_rcar_gen4_sysc_pd_initearly, ptr @clear_irq_flags._entry, ptr @clear_irq_flags._entry_ptr, ptr @rcar_gen4_sysc_pd_init._entry, ptr @rcar_gen4_sysc_pd_init._entry.3, ptr @rcar_gen4_sysc_pd_init._entry_ptr, ptr @rcar_gen4_sysc_pd_init._entry_ptr.5, ptr @rcar_gen4_sysc_pd_setup._entry, ptr @rcar_gen4_sysc_pd_setup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rcar_gen4_sysc_base, ptr @rcar_gen4_sysc_onecell_data, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @rcar_gen4_sysc_lock, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen4_sysc_pd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen4_sysc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen4_sysc_onecell_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen4_sysc_pd_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen4_sysc_pd_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen4_sysc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_irq_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen4_sysc_pd_init() #0 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #9
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !67
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @rcar_gen4_sysc_matches, ptr noundef nonnull %match) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup62_crit_edge, label %if.end

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %match, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call1 = call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %call) #12
  br label %out_put

if.end5:                                          ; preds = %if.end
  store ptr %call1, ptr @rcar_gen4_sysc_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 272) #13
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.out_put_crit_edge, label %if.end9

if.end5.out_put_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_put

if.end9:                                          ; preds = %if.end5
  %domains10 = getelementptr inbounds %struct.rcar_gen4_pm_domains, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %domains10, ptr %call7.i.i, align 8
  %num_domains = getelementptr inbounds %struct.genpd_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65, ptr %num_domains, align 4
  store ptr %call7.i.i, ptr @rcar_gen4_sysc_onecell_data, align 4
  %num_areas = getelementptr inbounds %struct.rcar_gen4_sysc_info, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %num_areas to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_areas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp113.not = icmp eq i32 %9, 0
  br i1 %cmp113.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.0114 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  %arrayidx = getelementptr %struct.rcar_gen4_sysc_area, ptr %11, i32 %i.0114
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %if.end16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %call18 = call i32 @strlen(ptr noundef nonnull %13) #14
  %add19 = add i32 %call18, 1361
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add19, i32 noundef 3520) #15
  %tobool21.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool21.not, label %if.end16.out_put_crit_edge, label %if.end23

if.end16.out_put_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_put

if.end23:                                         ; preds = %if.end16
  %add = add i32 %call18, 1
  %name24 = getelementptr inbounds %struct.rcar_gen4_sysc_pd, ptr %call9.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = call ptr @memcpy(ptr %name24, ptr %15, i32 %add)
  %name29 = getelementptr inbounds %struct.generic_pm_domain, ptr %call9.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %name29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %name24, ptr %name29, align 8
  %pdr = getelementptr %struct.rcar_gen4_sysc_area, ptr %11, i32 %i.0114, i32 1
  %18 = ptrtoint ptr %pdr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pdr, align 4
  %pdr30 = getelementptr inbounds %struct.rcar_gen4_sysc_pd, ptr %call9.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %pdr30 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %pdr30, align 8
  %flags = getelementptr %struct.rcar_gen4_sysc_area, ptr %11, i32 %i.0114, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %flags31 = getelementptr inbounds %struct.rcar_gen4_sysc_pd, ptr %call9.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %flags31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %flags31, align 4
  %call32 = call fastcc i32 @rcar_gen4_sysc_pd_setup(ptr noundef nonnull %call9.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end23.out_put_crit_edge

if.end23.out_put_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_put

if.end35:                                         ; preds = %if.end23
  %24 = ptrtoint ptr %pdr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pdr, align 4
  %idxprom = zext i8 %25 to i32
  %arrayidx39 = getelementptr %struct.rcar_gen4_pm_domains, ptr %call7.i.i, i32 0, i32 1, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i.i, ptr %arrayidx39, align 4
  %parent = getelementptr %struct.rcar_gen4_sysc_area, ptr %11, i32 %i.0114, i32 2
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp40 = icmp slt i32 %28, 0
  br i1 %cmp40, label %if.end35.for.inc_crit_edge, label %if.end42

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end42:                                         ; preds = %if.end35
  %arrayidx45 = getelementptr %struct.rcar_gen4_pm_domains, ptr %call7.i.i, i32 0, i32 1, i32 %28
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx45, align 4
  %call47 = call i32 @pm_genpd_add_subdomain(ptr noundef %30, ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end42.for.inc_crit_edge, label %do.end52

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end52:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %parent, align 4
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %32, i32 noundef %34) #12
  br label %out_put

for.inc:                                          ; preds = %if.end42.for.inc_crit_edge, %if.end35.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0114, 1
  %35 = ptrtoint ptr %num_areas to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_areas, align 4
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge
  %call61 = call i32 @of_genpd_add_provider_onecell(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i) #9
  br label %out_put

out_put:                                          ; preds = %for.end, %do.end52, %if.end23.out_put_crit_edge, %if.end16.out_put_crit_edge, %if.end5.out_put_crit_edge, %do.end
  %error.2 = phi i32 [ %call61, %for.end ], [ -12, %do.end ], [ -12, %if.end5.out_put_crit_edge ], [ %call47, %do.end52 ], [ %call32, %if.end23.out_put_crit_edge ], [ -12, %if.end16.out_put_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call) #9
  br label %cleanup62

cleanup62:                                        ; preds = %out_put, %entry.cleanup62_crit_edge
  %retval.0 = phi i32 [ %error.2, %out_put ], [ -19, %entry.cleanup62_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_gen4_sysc_pd_setup(ptr noundef %pd) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %name3 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %0 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name3, align 8
  %flags = getelementptr inbounds %struct.rcar_gen4_sysc_pd, ptr %pd, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_gen4_sysc_pd_setup, %if.then7)) #9
          to label %if.end40.sink.split [label %if.then7], !srcloc !68

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef nonnull @.str.9) #9
  br label %if.end40.sink.split

if.else:                                          ; preds = %entry
  %and10 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else31, label %do.body13

do.body13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_gen4_sysc_pd_setup, %if.then25)) #9
          to label %if.end40.sink.split [label %if.then25], !srcloc !68

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef nonnull @.str.10) #9
  br label %if.end40.sink.split

if.else31:                                        ; preds = %if.else
  %and33 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else31.if.end40_crit_edge, label %if.else31.if.end40.sink.split_crit_edge

if.else31.if.end40.sink.split_crit_edge:          ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.sink.split

if.else31.if.end40_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end40.sink.split:                              ; preds = %if.else31.if.end40.sink.split_crit_edge, %if.then25, %do.body13, %if.then7, %do.body
  %flags8 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 32
  %4 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags8, align 4
  %or30 = or i32 %5, 4
  store i32 %or30, ptr %flags8, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %if.else31.if.end40_crit_edge
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and42 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %flags45 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 32
  %8 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags45, align 4
  %or46 = or i32 %9, 9
  store i32 %or46, ptr %flags45, align 4
  %attach_dev = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 30
  %10 = ptrtoint ptr %attach_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cpg_mssr_attach_dev, ptr %attach_dev, align 4
  %detach_dev = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 31
  %11 = ptrtoint ptr %detach_dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cpg_mssr_detach_dev, ptr %detach_dev, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end40.if.end47_crit_edge
  %power_off = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 18
  %12 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rcar_gen4_sysc_pd_power_off, ptr %power_off, align 8
  %power_on = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 19
  %13 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rcar_gen4_sysc_pd_power_on, ptr %power_on, align 4
  %and49 = and i32 %7, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end69, label %do.body52

do.body52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_gen4_sysc_pd_setup, %if.then64)) #9
          to label %finalize [label %if.then64], !srcloc !68

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name3, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7, ptr noundef %15) #9
  br label %finalize

if.end69:                                         ; preds = %if.end47
  %pdr = getelementptr inbounds %struct.rcar_gen4_sysc_pd, ptr %pd, i32 0, i32 1
  %16 = ptrtoint ptr %pdr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pdr, align 8
  %18 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %conv.i = zext i8 %17 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 6
  %add.i = add nuw nsw i32 %mul.i, 4096
  %add.ptr.i = getelementptr i8, ptr %18, i32 %add.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.not = icmp eq i32 %20, 0
  br i1 %tobool.not.i.not, label %do.body72, label %if.end89

do.body72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_gen4_sysc_pd_setup, %if.then84)) #9
          to label %finalize [label %if.then84], !srcloc !68

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name3, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, ptr noundef %22) #9
  br label %finalize

if.end89:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %pdr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pdr, align 8
  %call91 = tail call fastcc i32 @rcar_gen4_sysc_power(i8 noundef zeroext %24, i1 noundef zeroext true)
  br label %finalize

finalize:                                         ; preds = %if.end89, %if.then84, %do.body72, %if.then64, %do.body52
  %call92 = tail call i32 @pm_genpd_init(ptr noundef %pd, ptr noundef nonnull @simple_qos_governor, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %finalize.if.end100_crit_edge, label %do.end97

finalize.if.end100_crit_edge:                     ; preds = %finalize
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

do.end97:                                         ; preds = %finalize
  call void @__sanitizer_cov_trace_pc() #11
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %1, i32 noundef %call92) #12
  br label %if.end100

if.end100:                                        ; preds = %do.end97, %finalize.if.end100_crit_edge
  ret i32 %call92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpg_mssr_attach_dev(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_mssr_detach_dev(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen4_sysc_pd_power_off(ptr nocapture noundef readonly %genpd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_gen4_sysc_pd_power_off.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_gen4_sysc_pd_power_off, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %genpd, i32 0, i32 10
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_gen4_sysc_pd_power_off.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pdr = getelementptr inbounds %struct.rcar_gen4_sysc_pd, ptr %genpd, i32 0, i32 1
  %2 = ptrtoint ptr %pdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pdr, align 8
  %call4 = tail call fastcc i32 @rcar_gen4_sysc_power(i8 noundef zeroext %3, i1 noundef zeroext false)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen4_sysc_pd_power_on(ptr nocapture noundef readonly %genpd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_gen4_sysc_pd_power_on.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_gen4_sysc_pd_power_on, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %genpd, i32 0, i32 10
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_gen4_sysc_pd_power_on.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pdr = getelementptr inbounds %struct.rcar_gen4_sysc_pd, ptr %genpd, i32 0, i32 1
  %2 = ptrtoint ptr %pdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pdr, align 8
  %call4 = tail call fastcc i32 @rcar_gen4_sysc_power(i8 noundef zeroext %3, i1 noundef zeroext true)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_gen4_sysc_power(i8 noundef zeroext %pdr, i1 noundef zeroext %on) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rcar_gen4_sysc_lock) #9
  %conv5 = zext i8 %pdr to i32
  %div137 = lshr i32 %conv5, 5
  %rem = and i32 %conv5, 31
  %shl = shl nuw i32 1, %rem
  %0 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %mul = shl nuw nsw i32 %div137, 2
  %add = or i32 %mul, 2080
  %add.ptr = getelementptr i8, ptr %0, i32 %add
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !69
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %or = or i32 %2, %shl
  %3 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %add.ptr10 = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %4) #9, !srcloc !72
  %5 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %add12 = add nuw nsw i32 %mul, 2096
  %add.ptr13 = getelementptr i8, ptr %5, i32 %add12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !69
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %or15 = or i32 %7, %shl
  %8 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %add.ptr18 = getelementptr i8, ptr %8, i32 %add12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %or15) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %9) #9, !srcloc !72
  %call19 = tail call fastcc i32 @clear_irq_flags(i32 noundef %div137, i32 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.preheader:                               ; preds = %entry
  %mul.i = shl nuw nsw i32 %conv5, 6
  %reg_offs.0.v.i = select i1 %on, i32 4100, i32 4104
  %reg_offs.0.i = add nuw nsw i32 %mul.i, %reg_offs.0.v.i
  %add29 = add nuw nsw i32 %mul.i, 4108
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %for.cond.preheader
  %k.0148 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end34.for.body_crit_edge ]
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 10000000
  %10 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !69
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  %and51.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and51.i)
  %cmp52.i = icmp eq i32 %and51.i, 3
  br i1 %cmp52.i, label %for.body.for.end.i_crit_edge, label %for.body.land.lhs.true.i_crit_edge

for.body.land.lhs.true.i_crit_edge:               ; preds = %for.body
  br label %land.lhs.true.i

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %for.body.land.lhs.true.i_crit_edge
  %call11.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call11.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call11.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then15.i, label %cond.false.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !69
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !74
  br label %for.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #9
  %17 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !69
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  %and.i = and i32 %19, 3
  %cmp.i = icmp eq i32 %and.i, 3
  br i1 %cmp.i, label %cond.false.i.for.end.i_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

cond.false.i.for.end.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %cond.false.i.for.end.i_crit_edge, %if.then15.i, %for.body.for.end.i_crit_edge
  %val.0.i = phi i32 [ %15, %if.then15.i ], [ %12, %for.body.for.end.i_crit_edge ], [ %19, %cond.false.i.for.end.i_crit_edge ]
  %and33.i = and i32 %val.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and33.i)
  %cmp34.not.i = icmp eq i32 %and33.i, 3
  br i1 %cmp34.not.i, label %if.end26, label %for.end.i.out_crit_edge

for.end.i.out_crit_edge:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end26:                                         ; preds = %for.end.i
  %20 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %add.ptr40.i = getelementptr i8, ptr %20, i32 %reg_offs.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 16777216) #9, !srcloc !72
  %21 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %add.ptr30 = getelementptr i8, ptr %21, i32 %add29
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #9, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool32.not = icmp eq i32 %23, 0
  br i1 %tobool32.not, label %for.end, label %if.end34

if.end34:                                         ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #9
  %inc = add nuw nsw i32 %k.0148, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.end34.out_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.end:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %k.0148)
  %cmp35 = icmp eq i32 %k.0148, 1000
  br i1 %cmp35, label %for.end.out_crit_edge, label %if.end38

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end38:                                         ; preds = %for.end
  %call39 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call39, 10000000
  %add43 = add nuw nsw i32 %mul, 2064
  %25 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %add.ptr44149 = getelementptr i8, ptr %25, i32 %add43
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44149) #9, !srcloc !69
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %and48150 = and i32 %27, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48150)
  %tobool49.not151 = icmp eq i32 %and48150, 0
  br i1 %tobool49.not151, label %if.end38.land.lhs.true_crit_edge, label %if.end38.if.end83_crit_edge

if.end38.if.end83_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.end38.land.lhs.true_crit_edge:                 ; preds = %if.end38
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end38.land.lhs.true_crit_edge
  %call53 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call53, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call53, %add.i
  br i1 %cmp3.i, label %for.end76, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #9
  %29 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %add.ptr44 = getelementptr i8, ptr %29, i32 %add43
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #9, !srcloc !69
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %and48 = and i32 %31, %shl
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.if.end83_crit_edge

cond.false.if.end83_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end76:                                        ; preds = %land.lhs.true
  %32 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %add.ptr62 = getelementptr i8, ptr %32, i32 %add43
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #9, !srcloc !69
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  %.pre = and i32 %34, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool79.not = icmp eq i32 %.pre, 0
  br i1 %tobool79.not, label %for.end76.out_crit_edge, label %for.end76.if.end83_crit_edge

for.end76.if.end83_crit_edge:                     ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

for.end76.out_crit_edge:                          ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end83:                                         ; preds = %for.end76.if.end83_crit_edge, %cond.false.if.end83_crit_edge, %if.end38.if.end83_crit_edge
  %call84 = tail call fastcc i32 @clear_irq_flags(i32 noundef %div137, i32 noundef %shl)
  br label %out

out:                                              ; preds = %if.end83, %for.end76.out_crit_edge, %for.end.out_crit_edge, %if.end34.out_crit_edge, %for.end.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call19, %entry.out_crit_edge ], [ %call84, %if.end83 ], [ -5, %for.end.out_crit_edge ], [ -5, %for.end76.out_crit_edge ], [ -5, %if.end34.out_crit_edge ], [ -11, %for.end.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rcar_gen4_sysc_lock, i32 noundef %call2) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_gen4_sysc_power.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_gen4_sysc_power, %if.then95)) #9
          to label %do.end106 [label %if.then95], !srcloc !68

if.then95:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %cond98 = select i1 %on, ptr @.str.19, ptr @.str.20
  %35 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %add101 = add nuw nsw i32 %mul, 2064
  %add.ptr102 = getelementptr i8, ptr %35, i32 %add101
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #9, !srcloc !69
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_gen4_sysc_power.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond98, i32 noundef %conv5, i32 noundef %37, i32 noundef %ret.0) #9
  br label %do.end106

do.end106:                                        ; preds = %if.then95, %out
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clear_irq_flags(i32 noundef %reg_idx, i32 noundef %isr_mask) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %mul = shl i32 %reg_idx, 2
  %add = add i32 %mul, 2064
  %add.ptr = getelementptr i8, ptr %0, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %1 = tail call i32 @llvm.bswap.i32(i32 %isr_mask) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #9, !srcloc !72
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 10000000
  %2 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %add.ptr448 = getelementptr i8, ptr %2, i32 %add
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr448) #9, !srcloc !69
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %and49 = and i32 %4, %isr_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool.not50 = icmp eq i32 %and49, 0
  br i1 %tobool.not50, label %entry.cleanup_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call8 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call8, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call8, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #9
  %6 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !69
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %and = and i32 %8, %isr_mask
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.cleanup_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr @rcar_gen4_sysc_base, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #9, !srcloc !69
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  %.pre = and i32 %11, %isr_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool30.not = icmp eq i32 %.pre, 0
  br i1 %tobool30.not, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %cond.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !49, !50, !52, !53, !55, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_rcar_gen4_sysc__235_376_rcar_gen4_sysc_pd_initearly, !1, !"__initcall__kmod_rcar_gen4_sysc__235_376_rcar_gen4_sysc_pd_initearly", i1 false, i1 false}
!1 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 376, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 313, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rcar_gen4_sysc_pd_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @rcar_gen4_sysc_pd_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 364, i32 4}
!10 = !{ptr @rcar_gen4_sysc_pd_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rcar_gen4_sysc_pd_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @rcar_gen4_sysc_matches, !13, !"rcar_gen4_sysc_matches", i1 false, i1 false}
!13 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 278, i32 34}
!14 = !{ptr @rcar_gen4_sysc_base, !15, !"rcar_gen4_sysc_base", i1 false, i1 false}
!15 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 64, i32 22}
!16 = !{ptr @rcar_gen4_sysc_onecell_data, !17, !"rcar_gen4_sysc_onecell_data", i1 false, i1 false}
!17 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 293, i32 35}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 230, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug231, !19, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!23 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug232, !25, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!25 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 238, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 259, i32 3}
!29 = !{ptr @rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug233, !28, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 264, i32 3}
!32 = !{ptr @rcar_gen4_sysc_pd_setup.__UNIQUE_ID_ddebug234, !31, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 273, i32 3}
!35 = !{ptr @rcar_gen4_sysc_pd_setup._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rcar_gen4_sysc_pd_setup._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 207, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rcar_gen4_sysc_pd_power_off.__UNIQUE_ID_ddebug229, !38, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 215, i32 2}
!43 = !{ptr @rcar_gen4_sysc_pd_power_on.__UNIQUE_ID_ddebug230, !42, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 174, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rcar_gen4_sysc_power.__UNIQUE_ID_ddebug228, !45, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!48 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 65, i32 8}
!52 = !{ptr @rcar_gen4_sysc_lock, !51, !"rcar_gen4_sysc_lock", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/soc/renesas/rcar-gen4-sysc.c", i32 102, i32 3}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @clear_irq_flags._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @clear_irq_flags._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
!68 = !{i64 2148765203, i64 2148765208, i64 2148765221, i64 2148765265, i64 2148765299, i64 2148765320}
!69 = !{i64 2984878}
!70 = !{i64 2150525227}
!71 = !{i64 2150526582}
!72 = !{i64 2984460}
!73 = !{i64 2153936296}
!74 = !{i64 2153936822}
!75 = !{i64 2153946304}
!76 = !{i64 2153946926}
!77 = !{i64 2153939770}
!78 = !{i64 2153940392}
