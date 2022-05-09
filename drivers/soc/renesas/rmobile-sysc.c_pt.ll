; ModuleID = '/llk/IR_all_yes/drivers/soc/renesas/rmobile-sysc.c_pt.bc'
source_filename = "../drivers/soc/renesas/rmobile-sysc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.special_pd = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.dev_power_governor = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.rmobile_pm_domain = type { %struct.generic_pm_domain, ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_rmobile_sysc__191_354_rmobile_init_pm_domains1 = internal global ptr @rmobile_init_pm_domains, section ".initcall1.init", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"renesas,sysc-rmobile\00", [43 x i8] zeroinitializer }, align 32
@rmobile_init_pm_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%pOF cannot map reg 0\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rmobile_init_pm_domains\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/soc/renesas/rmobile-sysc.c\00", [61 x i8] zeroinitializer }, align 32
@rmobile_init_pm_domains._entry_ptr = internal global ptr @rmobile_init_pm_domains._entry, section ".printk_index", align 4
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pm-domains\00", [21 x i8] zeroinitializer }, align 32
@rmobile_init_pm_domains._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%pOF lacks pm-domains node\0A\00", [34 x i8] zeroinitializer }, align 32
@rmobile_init_pm_domains._entry_ptr.7 = internal global ptr @rmobile_init_pm_domains._entry.5, section ".printk_index", align 4
@of_stdout = external dso_local local_unnamed_addr global ptr, align 4
@special_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,coresight-etm3x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,dbsc-r8a73a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,dbsc3-r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sbsc-sh73a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power-domains\00", [18 x i8] zeroinitializer }, align 32
@num_special_pds = internal unnamed_addr global i32 0, section ".init.data", align 4
@special_pds = internal unnamed_addr global [16 x %struct.special_pd] zeroinitializer, section ".init.data", align 4
@add_special_pd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014Too many special PM domains\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"add_special_pd\00", [17 x i8] zeroinitializer }, align 32
@add_special_pd._entry_ptr = internal global ptr @add_special_pd._entry, section ".printk_index", align 4
@add_special_pd.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.10, ptr @.str.3, ptr @.str.12, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rmobile_sysc\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Special PM domain %pOFn type %d for %pOF\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rmobile_setup_pm_domain.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rmobile_setup_pm_domain\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PM domain %s contains CPU\0A\00", [37 x i8] zeroinitializer }, align 32
@rmobile_setup_pm_domain.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.14, ptr @.str.3, ptr @.str.16, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PM domain %s contains serial console\0A\00", [58 x i8] zeroinitializer }, align 32
@pm_domain_always_on_gov = external dso_local global %struct.dev_power_governor, align 4
@rmobile_setup_pm_domain.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.14, ptr @.str.3, ptr @.str.17, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PM domain %s contains Coresight-ETM\0A\00", [59 x i8] zeroinitializer }, align 32
@rmobile_setup_pm_domain.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.14, ptr @.str.3, ptr @.str.18, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PM domain %s contains MEMCTL\0A\00", [34 x i8] zeroinitializer }, align 32
@rmobile_setup_pm_domain.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.14, ptr @.str.3, ptr @.str.19, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PM domain %s is always-on domain\0A\00", [62 x i8] zeroinitializer }, align 32
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@simple_qos_governor = external dso_local global %struct.dev_power_governor, align 4
@rmobile_pd_power_down.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rmobile_pd_power_down\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Power off, 0x%08x -> PSTR = 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__rmobile_pd_power_up.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__rmobile_pd_power_up\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Power on, 0x%08x -> PSTR = 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 319, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 322, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 326, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 329, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 166, i32 28 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 177, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 182, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 288, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 237, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 242, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 253, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 262, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 269, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 69, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [38 x i8] c"../drivers/soc/renesas/rmobile-sysc.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 97, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__initcall__kmod_rmobile_sysc__191_354_rmobile_init_pm_domains1, ptr @add_special_pd._entry, ptr @add_special_pd._entry_ptr, ptr @rmobile_init_pm_domains._entry, ptr @rmobile_init_pm_domains._entry.5, ptr @rmobile_init_pm_domains._entry_ptr, ptr @rmobile_init_pm_domains._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmobile_init_pm_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmobile_init_pm_domains._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_special_pd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rmobile_init_pm_domains() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #8
  %tobool.not38 = icmp eq ptr %call, null
  br i1 %tobool.not38, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.040 = phi ptr [ %call20, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %scanned.0.off039 = phi i1 [ %scanned.2.off0, %for.inc.for.body_crit_edge ], [ false, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @of_iomap(ptr noundef nonnull %np.040, i32 noundef 0) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %np.040) #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call4 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %np.040, ptr noundef nonnull @.str.4) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %call1) #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %np.040) #11
  br label %for.inc

if.end12:                                         ; preds = %if.end
  br i1 %scanned.0.off039, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @get_special_pds() #12
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %call16 = tail call fastcc i32 @rmobile_add_pm_domains(ptr noundef nonnull %call1, ptr noundef nonnull %call4, ptr noundef null) #12
  tail call void @of_node_put(ptr noundef nonnull %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @of_node_put(ptr noundef nonnull %np.040) #8
  br label %for.end

if.end19:                                         ; preds = %if.end15
  %fwnode = getelementptr inbounds %struct.device_node, ptr %np.040, i32 0, i32 3
  %tobool.not.i.i = icmp eq ptr %fwnode, null
  %cmp.i.i = icmp ugt ptr %fwnode, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end19.for.inc_crit_edge, label %if.then1.i

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then1.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.device_node, ptr %np.040, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags.i, align 4
  %2 = or i8 %1, 4
  store i8 %2, ptr %flags.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then1.i, %if.end19.for.inc_crit_edge, %if.then6, %do.end
  %scanned.2.off0 = phi i1 [ %scanned.0.off039, %if.then6 ], [ %scanned.0.off039, %do.end ], [ true, %if.end19.for.inc_crit_edge ], [ true, %if.then1.i ]
  %call20 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %np.040, ptr noundef null, ptr noundef nonnull @.str) #8
  %tobool.not = icmp eq ptr %call20, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then18, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ %call16, %if.then18 ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call fastcc void @put_special_pds() #12
  ret i32 %ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_special_pds() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %id = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %id, align 4, !annotation !68
  %call = tail call ptr @of_get_next_cpu_node(ptr noundef null) #8
  %cmp.not14 = icmp eq ptr %call, null
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %np.015 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  tail call fastcc void @add_special_pd(ptr noundef nonnull %np.015, i32 noundef 1) #12
  %call1 = tail call ptr @of_get_next_cpu_node(ptr noundef nonnull %np.015) #8
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_stdout to i32))
  %1 = load ptr, ptr @of_stdout, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @add_special_pd(ptr noundef nonnull %1, i32 noundef 2) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %call2 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @special_ids, ptr noundef nonnull %id) #8
  %tobool4.not16 = icmp eq ptr %call2, null
  br i1 %tobool4.not16, label %if.end.for.end8_crit_edge, label %if.end.for.body5_crit_edge

if.end.for.body5_crit_edge:                       ; preds = %if.end
  br label %for.body5

if.end.for.end8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end8

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %if.end.for.body5_crit_edge
  %np.117 = phi ptr [ %call7, %for.body5.for.body5_crit_edge ], [ %call2, %if.end.for.body5_crit_edge ]
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call fastcc void @add_special_pd(ptr noundef nonnull %np.117, i32 noundef %6) #12
  %call7 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.117, ptr noundef nonnull @special_ids, ptr noundef nonnull %id) #8
  %tobool4.not = icmp eq ptr %call7, null
  br i1 %tobool4.not, label %for.body5.for.end8_crit_edge, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5

for.body5.for.end8_crit_edge:                     ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end8

for.end8:                                         ; preds = %for.body5.for.end8_crit_edge, %if.end.for.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmobile_add_pm_domains(ptr noundef %base, ptr noundef %parent, ptr noundef %genpd_parent) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_next_child(ptr noundef %parent, ptr noundef null) #8
  %cmp.not38 = icmp eq ptr %call, null
  br i1 %cmp.not38, label %entry.cleanup19_crit_edge, label %for.body.lr.ph

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.body.lr.ph:                                   ; preds = %entry
  %tobool8.not = icmp eq ptr %genpd_parent, null
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %np.039 = phi ptr [ %call, %for.body.lr.ph ], [ %call18, %if.end12.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.039, ptr noundef nonnull @.str.13, ptr noundef nonnull %idx, i32 noundef 1, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1368) #13
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %np.039) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  br label %cleanup19

if.end5:                                          ; preds = %for.body
  %2 = ptrtoint ptr %np.039 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np.039, align 4
  %name6 = getelementptr inbounds %struct.generic_pm_domain, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %name6, align 8
  %base7 = getelementptr inbounds %struct.rmobile_pm_domain, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %base7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %base, ptr %base7, align 8
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %bit_shift = getelementptr inbounds %struct.rmobile_pm_domain, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %bit_shift to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %bit_shift, align 4
  call fastcc void @rmobile_setup_pm_domain(ptr noundef nonnull %np.039, ptr noundef nonnull %call7.i.i) #12
  br i1 %tobool8.not, label %if.end5.if.end12_crit_edge, label %if.then9

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = call i32 @pm_genpd_add_subdomain(ptr noundef nonnull %genpd_parent, ptr noundef nonnull %call7.i.i) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end5.if.end12_crit_edge
  %call14 = call i32 @of_genpd_add_provider_simple(ptr noundef nonnull %np.039, ptr noundef nonnull %call7.i.i) #8
  %call16 = call fastcc i32 @rmobile_add_pm_domains(ptr noundef %base, ptr noundef nonnull %np.039, ptr noundef nonnull %call7.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  %call18 = call ptr @of_get_next_child(ptr noundef %parent, ptr noundef nonnull %np.039) #8
  %cmp.not = icmp eq ptr %call18, null
  br i1 %cmp.not, label %if.end12.cleanup19_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end12.cleanup19_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

cleanup19:                                        ; preds = %if.end12.cleanup19_crit_edge, %if.then4, %entry.cleanup19_crit_edge
  %retval.2 = phi i32 [ -12, %if.then4 ], [ 0, %entry.cleanup19_crit_edge ], [ 0, %if.end12.cleanup19_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_special_pds() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @num_special_pds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp3.not = icmp eq i32 %0, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %i.04
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  tail call void @of_node_put(ptr noundef %2) #8
  %inc = add nuw i32 %i.04, 1
  %3 = load i32, ptr @num_special_pds, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_cpu_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_special_pd(ptr noundef %np, i32 noundef %type) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %0 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %entry
  %1 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %for.cond.preheader

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %of_parse_phandle.exit
  %3 = load i32, ptr @num_special_pds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp44.not = icmp eq i32 %3, 0
  br i1 %cmp44.not, label %for.cond.preheader.do.body12_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body12_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %i.045
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %2, %5
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %type4 = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %i.045, i32 1
  %6 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %type)
  %cmp5 = icmp eq i32 %7, %type
  br i1 %cmp5, label %if.then6, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %2) #8
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp8 = icmp eq i32 %3, 16
  br i1 %cmp8, label %do.end, label %for.end.do.body12_crit_edge

for.end.do.body12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  call void @of_node_put(ptr noundef nonnull %2) #8
  br label %cleanup

do.body12:                                        ; preds = %for.end.do.body12_crit_edge, %for.cond.preheader.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_special_pd.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_special_pd, %if.then18)) #8
          to label %do.end21 [label %if.then18], !srcloc !69

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_special_pd.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i32 noundef %type, ptr noundef %np) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body12
  %8 = load i32, ptr @num_special_pds, align 4
  %arrayidx22 = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %2, ptr %arrayidx22, align 4
  %type25 = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %8, i32 1
  %10 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %type, ptr %type25, align 4
  %inc26 = add i32 %8, 1
  store i32 %inc26, ptr @num_special_pds, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end, %if.then6, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rmobile_setup_pm_domain(ptr noundef readnone %np, ptr noundef %pd) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = load i32, ptr @num_special_pds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp8.not.i = icmp eq i32 %2, 0
  br i1 %cmp8.not.i, label %entry.sw.bb63_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sw.bb63_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb63

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %i.09.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %4, %np
  br i1 %cmp2.i, label %pd_type.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.sw.bb63_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.sw.bb63_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb63

pd_type.exit:                                     ; preds = %for.body.i
  %type.i = getelementptr [16 x %struct.special_pd], ptr @special_pds, i32 0, i32 %i.09.i, i32 1
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %pd_type.exit.sw.epilog_crit_edge [
    i32 1, label %do.body
    i32 2, label %do.body7
    i32 3, label %do.body24
    i32 4, label %do.body44
    i32 0, label %pd_type.exit.sw.bb63_crit_edge
  ]

pd_type.exit.sw.bb63_crit_edge:                   ; preds = %pd_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb63

pd_type.exit.sw.epilog_crit_edge:                 ; preds = %pd_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %pd_type.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmobile_setup_pm_domain, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !69

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.15, ptr noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %flags = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 32
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 4
  store i32 %or, ptr %flags, align 4
  br label %sw.epilog

do.body7:                                         ; preds = %pd_type.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmobile_setup_pm_domain, %if.then19)) #8
          to label %do.end22 [label %if.then19], !srcloc !69

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.16, ptr noundef %1) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body7
  %gov = getelementptr inbounds %struct.rmobile_pm_domain, ptr %pd, i32 0, i32 1
  %10 = ptrtoint ptr %gov to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pm_domain_always_on_gov, ptr %gov, align 8
  %suspend = getelementptr inbounds %struct.rmobile_pm_domain, ptr %pd, i32 0, i32 2
  %11 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rmobile_pd_suspend_console, ptr %suspend, align 4
  br label %sw.epilog

do.body24:                                        ; preds = %pd_type.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmobile_setup_pm_domain, %if.then36)) #8
          to label %do.end39 [label %if.then36], !srcloc !69

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug188, ptr noundef nonnull @.str.17, ptr noundef %1) #8
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24
  %flags41 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 32
  %12 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags41, align 4
  %or42 = or i32 %13, 4
  store i32 %or42, ptr %flags41, align 4
  br label %sw.epilog

do.body44:                                        ; preds = %pd_type.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmobile_setup_pm_domain, %if.then56)) #8
          to label %do.end59 [label %if.then56], !srcloc !69

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.18, ptr noundef %1) #8
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %do.body44
  %flags61 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 32
  %14 = ptrtoint ptr %flags61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags61, align 4
  %or62 = or i32 %15, 4
  store i32 %or62, ptr %flags61, align 4
  br label %sw.epilog

sw.bb63:                                          ; preds = %pd_type.exit.sw.bb63_crit_edge, %for.inc.i.sw.bb63_crit_edge, %entry.sw.bb63_crit_edge
  %bit_shift = getelementptr inbounds %struct.rmobile_pm_domain, ptr %pd, i32 0, i32 4
  %16 = ptrtoint ptr %bit_shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bit_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp = icmp eq i32 %17, -1
  br i1 %cmp, label %do.body65, label %sw.bb63.sw.epilog_crit_edge

sw.bb63.sw.epilog_crit_edge:                      ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body65:                                        ; preds = %sw.bb63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmobile_setup_pm_domain, %if.then77)) #8
          to label %do.end80 [label %if.then77], !srcloc !69

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug190, ptr noundef nonnull @.str.19, ptr noundef %1) #8
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %do.body65
  %flags82 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 32
  %18 = ptrtoint ptr %flags82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags82, align 4
  %or83 = or i32 %19, 4
  store i32 %or83, ptr %flags82, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end80, %sw.bb63.sw.epilog_crit_edge, %do.end59, %do.end39, %do.end22, %do.end, %pd_type.exit.sw.epilog_crit_edge
  %gov2.i = getelementptr inbounds %struct.rmobile_pm_domain, ptr %pd, i32 0, i32 1
  %20 = ptrtoint ptr %gov2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gov2.i, align 8
  %flags.i = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 32
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %23, 9
  store i32 %or.i, ptr %flags.i, align 4
  %attach_dev.i = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 30
  %24 = ptrtoint ptr %attach_dev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @cpg_mstp_attach_dev, ptr %attach_dev.i, align 4
  %detach_dev.i = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 31
  %25 = ptrtoint ptr %detach_dev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @cpg_mstp_detach_dev, ptr %detach_dev.i, align 8
  %and.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i110, label %sw.epilog.rmobile_init_pm_domain.exit_crit_edge

sw.epilog.rmobile_init_pm_domain.exit_crit_edge:  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %rmobile_init_pm_domain.exit

if.then.i110:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %power_off.i = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 18
  %26 = ptrtoint ptr %power_off.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @rmobile_pd_power_down, ptr %power_off.i, align 8
  %power_on.i = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 19
  %27 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @rmobile_pd_power_up, ptr %power_on.i, align 4
  %call.i = tail call fastcc i32 @__rmobile_pd_power_up(ptr noundef %pd) #8
  br label %rmobile_init_pm_domain.exit

rmobile_init_pm_domain.exit:                      ; preds = %if.then.i110, %sw.epilog.rmobile_init_pm_domain.exit_crit_edge
  %tobool4.not.i = icmp eq ptr %21, null
  %.simple_qos_governor.i = select i1 %tobool4.not.i, ptr @simple_qos_governor, ptr %21
  %call5.i = tail call i32 @pm_genpd_init(ptr noundef %pd, ptr noundef %.simple_qos_governor.i, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rmobile_pd_suspend_console() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %0 = load i8, ptr @console_suspend_enabled, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %cond = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpg_mstp_attach_dev(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_mstp_detach_dev(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmobile_pd_power_down(ptr nocapture noundef readonly %genpd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_shift = getelementptr inbounds %struct.rmobile_pm_domain, ptr %genpd, i32 0, i32 4
  %0 = ptrtoint ptr %bit_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit_shift, align 4
  %shl = shl nuw i32 1, %1
  %suspend = getelementptr inbounds %struct.rmobile_pm_domain, ptr %genpd, i32 0, i32 2
  %2 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 %3() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup51_crit_edge

if.then.cleanup51_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup51

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %base = getelementptr inbounds %struct.rmobile_pm_domain, ptr %genpd, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !71
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end5.do.body34_crit_edge, label %if.then9

if.end5.do.body34_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

if.then9:                                         ; preds = %if.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 8
  %add.ptr11 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %8) #8, !srcloc !74
  br label %for.body

for.body:                                         ; preds = %do.end28.for.body_crit_edge, %if.then9
  %retry_count.066 = phi i32 [ 100, %if.then9 ], [ %dec, %do.end28.for.body_crit_edge ]
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 8
  %add.ptr16 = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !71
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %and20 = and i32 %14, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %for.body.do.body34_crit_edge, label %do.end28

for.body.do.body34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

do.end28:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !77
  %dec = add nsw i32 %retry_count.066, -1
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %do.end28.do.body34_crit_edge, label %do.end28.for.body_crit_edge

do.end28.for.body_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end28.do.body34_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

do.body34:                                        ; preds = %do.end28.do.body34_crit_edge, %for.body.do.body34_crit_edge, %if.end5.do.body34_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmobile_pd_power_down.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmobile_pd_power_down, %if.then40)) #8
          to label %cleanup51 [label %if.then40], !srcloc !69

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %genpd, i32 0, i32 10
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 8
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 8
  %add.ptr44 = getelementptr i8, ptr %18, i32 128
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #8, !srcloc !71
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rmobile_pd_power_down.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.21, ptr noundef %16, i32 noundef %shl, i32 noundef %20) #8
  br label %cleanup51

cleanup51:                                        ; preds = %if.then40, %do.body34, %if.then.cleanup51_crit_edge
  %retval.1 = phi i32 [ %call2, %if.then.cleanup51_crit_edge ], [ 0, %if.then40 ], [ 0, %do.body34 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmobile_pd_power_up(ptr nocapture noundef readonly %genpd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @__rmobile_pd_power_up(ptr noundef %genpd)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rmobile_pd_power_up(ptr nocapture noundef readonly %rmobile_pd) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_shift = getelementptr inbounds %struct.rmobile_pm_domain, ptr %rmobile_pd, i32 0, i32 4
  %0 = ptrtoint ptr %bit_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit_shift, align 4
  %shl = shl nuw i32 1, %1
  %base = getelementptr inbounds %struct.rmobile_pm_domain, ptr %rmobile_pd, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 128
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 8
  %add.ptr3 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %6) #8, !srcloc !74
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body
  %retry_count.062 = phi i32 [ 200, %do.body ], [ %dec, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 8
  %add.ptr8 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !71
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %and12 = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %for.body.for.end_crit_edge, label %if.end15

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %retry_count.062)
  %cmp = icmp ugt i32 %retry_count.062, 100
  br i1 %cmp, label %if.then16, label %do.end21

if.then16:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #8
  br label %for.inc

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !83
  br label %for.inc

for.inc:                                          ; preds = %do.end21, %if.then16
  %dec = add nsw i32 %retry_count.062, -1
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %spec.select = phi i32 [ 0, %for.body.for.end_crit_edge ], [ -5, %for.inc.for.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rmobile_pd_power_up.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rmobile_pd_power_up, %if.then36)) #8
          to label %cleanup [label %if.then36], !srcloc !69

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %rmobile_pd, i32 0, i32 10
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 8
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %add.ptr40 = getelementptr i8, ptr %17, i32 128
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #8, !srcloc !71
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__rmobile_pd_power_up.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.23, ptr noundef %15, i32 noundef %shl, i32 noundef %19) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %if.then36 ], [ %spec.select, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_rmobile_sysc__191_354_rmobile_init_pm_domains1, !1, !"__initcall__kmod_rmobile_sysc__191_354_rmobile_init_pm_domains1", i1 false, i1 false}
!1 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 354, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 319, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 322, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rmobile_init_pm_domains._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @rmobile_init_pm_domains._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 326, i32 34}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 329, i32 4}
!14 = !{ptr @rmobile_init_pm_domains._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rmobile_init_pm_domains._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 166, i32 28}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 177, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @add_special_pd._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @add_special_pd._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 182, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @add_special_pd.__UNIQUE_ID_ddebug185, !24, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!27 = !{ptr @num_special_pds, !28, !"num_special_pds", i1 false, i1 false}
!28 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 151, i32 21}
!29 = !{ptr @special_pds, !30, !"special_pds", i1 false, i1 false}
!30 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 149, i32 3}
!31 = !{ptr @special_ids, !32, !"special_ids", i1 false, i1 false}
!32 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 153, i32 34}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 288, i32 32}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 237, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug186, !36, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 242, i32 3}
!41 = !{ptr @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug187, !40, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 253, i32 3}
!44 = !{ptr @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug188, !43, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 262, i32 3}
!47 = !{ptr @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug189, !46, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 269, i32 4}
!50 = !{ptr @rmobile_setup_pm_domain.__UNIQUE_ID_ddebug190, !49, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 69, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rmobile_pd_power_down.__UNIQUE_ID_ddebug183, !52, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/renesas/rmobile-sysc.c", i32 97, i32 2}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__rmobile_pd_power_up.__UNIQUE_ID_ddebug184, !56, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{i64 2148771362, i64 2148771367, i64 2148771380, i64 2148771424, i64 2148771458, i64 2148771479}
!70 = !{i8 0, i8 2}
!71 = !{i64 4528470}
!72 = !{i64 2152876014}
!73 = !{i64 2152876240}
!74 = !{i64 4528052}
!75 = !{i64 2152876943}
!76 = !{i64 2152877218}
!77 = !{i64 2152877060}
!78 = !{i64 2152880321}
!79 = !{i64 2152880931}
!80 = !{i64 2152881157}
!81 = !{i64 2152881860}
!82 = !{i64 2152882684}
!83 = !{i64 2152882526}
!84 = !{i64 2152885824}
